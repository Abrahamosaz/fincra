import { redirect } from "next/navigation";

const Index = () => {
  redirect("/auth/login");
};

export default Index;
