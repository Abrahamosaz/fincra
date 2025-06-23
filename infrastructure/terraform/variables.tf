variable "token" {
    type  = string
    description = "Railway API token"
}

variable "project_name" {
    type = string
    description = "Project name"
    default = "fincra"
}

variable "env" {
    type = string
    description = "Environment name"
    default = "prod"
}

variable "backend_repo_url" {
    type = string
    description = "Backend repository URL"
}

variable "backend_repo_branch" {
    type = string
    description = "Backend repository branch"
    default = "main"
}

variable "frontend_repo_url" {
    type = string
    description = "Frontend repository URL"
}

variable "frontend_repo_branch" {
    type = string
    description = "Frontend repository branch"
    default = "main"
}

variable "frontend_env" {
    type = map(string)
    description = "Frontend environment"
    default = {
        NEXT_PUBLIC_API_URL = "https://api.fincra.com"
    }
}

variable "backend_env" {
    type = map(string)
    description = "Backend environment"
    default = {
        SENTRY_KEY = "1234567890"
    }
}