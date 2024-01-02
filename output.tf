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