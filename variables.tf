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
