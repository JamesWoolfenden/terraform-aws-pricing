# prototype work on aws pricing

Can I price up my Terraform as I design it?

* describe-services

aws pricing describe-services --region us-east-1
$services=aws pricing describe-services --region us-east-1|convertfrom-json

$services.Services
$services.Services.AmazonEC2
($data|where {$_.ServiceCode -eq "AmazonEc2"}).AttributeNames

lots of attributes

* get-attribute-values
aws pricing get-attribute-values --service-code AmazonEC2 --attribute-name location --region us-east-1
 
* get-products

* help



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
 