variable "environment" {
  description = "Environment name"
  default     = "dev"
}

variable "function" {
  description = "Function is something bigger than service. It's a set of services the perform common function."
  default     = "{{ cookiecutter.project_name }}"
}
