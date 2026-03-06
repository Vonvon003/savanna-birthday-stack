variable "site_path" {
  description = "Absolute path to the Savanna site content on the host"
  type        = string
  default     = "/home/von/projects/savanna-birthday-stack/savanna"
}

variable "external_port" {
  description = "Host port exposed for the Savanna site"
  type        = number
  default     = 8081
}
