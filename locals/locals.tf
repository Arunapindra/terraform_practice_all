locals {
  domain_name = "arudevops.online"
  zone_id = "Z01205012TZS4OIBTCKLA"
  instance_type = var.Environmrnt == "prod" ? "t3.medium" : "t3.micro"
# count.index will not work in locals

}
