variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
  
}
variable "zone_id" {
  default = "Z01205012TZS4OIBTCKLA"
}
variable "domain_name" {
  default = "arudevops.online"
}
