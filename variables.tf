variable "cloudfront_arn" {}
variable "name" {}

variable "distribution_id" {
  type        = string
  description = "The Cloudfront Distribution on which to enable the Application Layer Automatic Response."
}