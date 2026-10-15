locals {
  location = var.location

  suffix = "${var.project_name}-${var.environment}-${var.location}-001"

  tags = merge(
    var.tags,
    {
      "Project"     = var.project_name
      "Environment" = var.environment
      "Location"    = var.location
    }
  )
}
