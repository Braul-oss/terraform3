
variable "project_name" {
  description = "The name of the project"
  type        = string

  validation {
    condition     = length(var.project_name) >= 5 && length(var.project_name) <= 20
    error_message = "The project name must be between 5 and 20 characters long."
  }
}

variable "environment" {
  description = "The environment for the project"
  type        = string

  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "The environment must be one of: dev, qa, prod."
  }
}

variable "location" {
  description = "The Azure region where resources will be deployed"
  type        = string
  default     = "mexicocentral"
}

variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)

  default = {
    project = "terraform"
  }
}

variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
  default     = "5ffae3b1-2ecd-49aa-93c2-fe9e9582393f"
  sensitive   = true
}

variable "service_plan_sku_name" {
  description = "SKU del plan de App Service (F1 = nivel gratuito)"
  type        = string
  default     = "F1"
}

variable "application_type" {
  description = "Application type for the Azure Application Insights resource"
  type        = string
  default     = "web"
}

variable "node_version" {
  description = "Node.js version for the Azure Linux Web App"
  type        = string
  default     = "24-lts"
}

variable "log_analytics_sku" {
  description = "SKU del espacio de trabajo de Log Analytics"
  type        = string
  default     = "PerGB2018"
}

variable "web_app_name" {
  description = "Nombre de la aplicación web del entorno QA (debe ser único en todo Azure)"
  type        = string
  default     = "app-utvt-integradora-web-qa-mxc-008"
}
