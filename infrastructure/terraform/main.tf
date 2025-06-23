############################
# PROJECT
############################
resource "railway_project" "fincra" {
  name = var.project_name
}


############################
# ENVIRONMENT
############################
resource "railway_environment" "fincra" {
  name       = "${var.env}-${var.project_name}"
  project_id = railway_project.fincra.id
}

############################
# SERVICES
############################
resource "railway_service" "backend" {
  name       = "backend"
  project_id = railway_project.fincra.id
  source_repo  = var.backend_repo_url
  root_directory = "backend"
  config_path = file("${path.module}/config/backend.railway.json")
  source_repo_branch  = var.backend_repo_branch
}

resource "railway_service" "frontend" {
  name       = "frontend"
  project_id = railway_project.fincra.id
  source_repo  = var.frontend_repo_url
  root_directory = "frontend"
  config_path = file("${path.module}/config/frontend.railway.json")
  source_repo_branch  = var.frontend_repo_branch
}



############################
# VARIABLES
############################
resource "railway_variable" "backend_env" {
  name           = "SENTRY_KEY"
  value          = "1234567890"
  environment_id = railway_project.fincra.default_environment.id
  service_id     = railway_service.backend.id
}


resource "railway_variable" "frontend_env" {
  name           = "SENTRY_KEY"
  value          = "1234567890"
  environment_id = railway_project.fincra.default_environment.id
  service_id     = railway_service.frontend.id
}
