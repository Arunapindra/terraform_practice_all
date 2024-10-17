variable "instance_names" {
  type = list(string)
  default = [ "mysql" , "backend" , "frontend" ]
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environmrnt = "dev"
        Terraform = "true"
    }
}

variable "zone_id" {
  default = "Z01205012TZS4OIBTCKLA"
}

variable "domain_name" {
  default = "arudevops.online"
}

