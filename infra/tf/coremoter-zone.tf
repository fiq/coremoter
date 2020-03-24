provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_route53_zone" "coremoter_com" {
    name = "coremoter.com"
    tags = {
        "project" = "coremoter",
        "asset" = "zonefile"
    }
}
 
resource "aws_route53_record" "root" {
    zone_id = aws_route53_zone.coremoter_com.zone_id
    name = "coremoter.com"
    type = "A"
    ttl = "300"
    records = [ 
        "185.199.108.153",
        "185.199.109.153",
        "185.199.110.153",
        "185.199.111.153"]
}

resource "aws_route53_record" "www" {
    zone_id = aws_route53_zone.coremoter_com.zone_id
    name = "www.coremoter.com"
    type = "A"
    ttl = "300"
    records = aws_route53_record.root.records
}

output "coremoter_name_servers" {  
  value = aws_route53_zone.coremoter_com.name_servers   
}
