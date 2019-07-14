data "aws_pricing_product" "example" {
  service_code = var.service_code

  #filters = var.filters
  filters {
        field="productFamily"
        value="Storage"
    }

  filters {
        field = "location"
        value = "US East (N. Virginia)"
    }
    
  filters {
            field="volumeType"
        value="Standard"
  }

filters {
        field="availability"
        value="99.99%"
  }

filters    {
        field="storageClass"
        value="General Purpose"
    }

}