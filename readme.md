[![Slalom][logo]](https://slalom.com)

# terraform-aws-pricing

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-pricing/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-pricing)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-pricing.svg)](https://github.com/JamesWoolfenden/terraform-aws-pricing/releases/latest)

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
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| filters | Filters for the service_code | list | `<list>` | no |
| service\_code | The Product calls to query AmazonS3 | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| price | hashicorp required |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

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

Copyright � 2019-2020 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

  [![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

  [jameswoolfenden_homepage]: https://github.com/jameswoolfenden
  [jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/company/slalom-consulting/
[twitter]: https://twitter.com/Slalom

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-pricing&url=https://github.com/jameswoolfenden/terraform-aws-pricing
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-pricing&url=https://github.com/jameswoolfenden/terraform-aws-pricing
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-pricing
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-pricing
[share_email]: mailto:?subject=terraform-aws-pricing&body=https://github.com/jameswoolfenden/terraform-aws-pricing

## Prototype work on aws pricing

Can I price up my Terraform as I design it?

describe-services

aws pricing describe-services --region us-east-1
$services=aws pricing describe-services --region us-east-1|convertfrom-json

$services.Services
$services.Services.AmazonEC2
($data|where {$_.ServiceCode -eq "AmazonEc2"}).AttributeNames

lots of attributes

get-attribute-values
aws pricing get-attribute-values --service-code AmazonEC2 --attribute-name location --region us-east-1

get-products

help

($data|where {$_.ServiceCode -eq "AmazonS3"}).AttributeNames

productFamily
volumeType
durability
termType
usagetype
locationType
availability
storageClass
feeDescription
servicecode
groupDescription
feeCode
location
servicename
operation
group

aws pricing get-attribute-values --service-code AmazonEC2 --attribute-name productFamily --region us-east-1
