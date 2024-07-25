data "aws_region" "current" {}
data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}

resource "aws_shield_protection" "shield_protection" {
  name         = var.name
  resource_arn = var.cloudfront_arn
}

resource "aws_shield_application_layer_automatic_response" "ddos" {
  resource_arn = var.cloudfront_arn
  action       = "BLOCK"
  depends_on   = [aws_shield_protection.shield_protection]
}