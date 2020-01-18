variable "service_code" {
  description = "The Product calls to query AmazonS3"
  type        = string
}

variable "filters" {
  description = "Filters for the service_code"
  default = [{
    field = "productFamily"
    value = "Storage"
    }, {
    field = "location"
    value = "US East (N. Virginia)"
    }, {
    field = "volumeType"
    value = "Standard"
    }, {
    field = "availability"
    value = "99.99%"
    }, {
    field = "storageClass"
    value = "General Purpose"
  }]
}
