variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
  description = "description"
}

variable "domain_name" {
  default = "arudevops.online"
}

variable "zone_id" {
  default = "Z01205012TZS4OIBTCKLA"
}