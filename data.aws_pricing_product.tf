data "aws_pricing_product" "example" {
  service_code = var.service_code

  dynamic "filters" {
    for_each = var.filters
    content {
      field = filters.value.field
      value = filters.value.value
    }
  }
}
