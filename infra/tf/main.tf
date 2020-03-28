provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}
 
resource "aws_route53_record" "www" {
    zone_id = var.coremoter_zone_id
    name = "www.coremoter.com"
    type = "CNAME"
    ttl = "300"
    records = "fiq.github.io"
}
