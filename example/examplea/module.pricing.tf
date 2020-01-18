module "pricing" {
  source       = "../../"
  filters      = var.filters
  service_code = var.service_code
}
