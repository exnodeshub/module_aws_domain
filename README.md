# module_aws_vpc  
My module vpc aws

## Getting started  
config git credentical for private repo   
href: https://gitlab.com/exnodes-new/terraform-core/-/tree/master/modules/module_aws_domain?ref_type=heads

add module    
example:       
```JavaScript

module "example_domain" {
  source = "./modules/module_aws_domain"
  domain  = "api.example.com"
  zone_id = "your zone id"
  alb = {
    dns_name = "your alb dns name"
    zone_id  = "your alb zone id"
  }
}
```

# Input 
```JavaScript
variable "domain" {
  description = "DNS"
  type        = string
}
variable "zone_id" {
  description = "Route53 Zone ID"
  type        = string
}
variable "alb" {
  description = "ALB details"
  type        = map(string)
  default     = {
    dns_name = ""
    zone_id = ""
  }
}

```

# Output 
```JavaScript
output "certificate" {
  description = "Certificate"
  value       = aws_acm_certificate.certificate
}
output "validation" {
  description = "Validation"
  value       = aws_acm_certificate_validation.validation
}
output "records" {
  description = "Records"
  value       = aws_route53_record.records
}
output "record-a" {
  description = "Record A"
  value       = aws_route53_record.record-a
}
```