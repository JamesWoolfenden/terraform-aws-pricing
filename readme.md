# terraform-aws-pricing

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-pricing/workflows/Verify/badge.svg?branch=main)](https://github.com/JamesWoolfenden/terraform-aws-pricing)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-pricing.svg)](https://github.com/JamesWoolfenden/terraform-aws-pricing/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-pricing.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-pricing/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

Prototype pricing module.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing Terraform code:

```hcl
module "pricing" {
  source         = "JamesWoolfenden/pricing/aws"
  filters        = var.filters
  service_code   = var.service_code
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aws_pricing_product.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/pricing_product) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_filters"></a> [filters](#input\_filters) | Filters for the service\_code | `list` | <pre>[<br/>  {<br/>    "field": "productFamily",<br/>    "value": "Storage"<br/>  },<br/>  {<br/>    "field": "location",<br/>    "value": "US East (N. Virginia)"<br/>  },<br/>  {<br/>    "field": "volumeType",<br/>    "value": "Standard"<br/>  },<br/>  {<br/>    "field": "availability",<br/>    "value": "99.99%"<br/>  },<br/>  {<br/>    "field": "storageClass",<br/>    "value": "General Purpose"<br/>  }<br/>]</pre> | no |
| <a name="input_service_code"></a> [service\_code](#input\_service\_code) | The Product calls to query AmazonS3 | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_price"></a> [price](#output\_price) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Prototype work on aws pricing

Can I price up my Terraform as I design it?

```shell
aws pricing describe-services --region us-east-1
$services=aws pricing describe-services --region us-east-1|convertfrom-json

$services.Services
$services.Services.AmazonEC2
($data|where {$_.ServiceCode -eq "AmazonEc2"}).AttributeNames

aws pricing get-attribute-values --service-code AmazonEC2 --attribute-name location --region us-east-1

($data|where {$_.ServiceCode -eq "AmazonS3"}).AttributeNames

aws pricing get-attribute-values --service-code AmazonEC2 --attribute-name productFamily --region us-east-1
```

## Related Projects

Check out these related projects.

- [terraform-aws-codebuild](https://github.com/jameswoolfenden/terraform-aws-codebuild) - Making a Build pipeline

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-pricing/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-pricing/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2023 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
