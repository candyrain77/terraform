


#Creation vpc main
resource "aws_vpc" "DefaultVpc" {
  cidr_block = "${var.vpc_cidr_block}"
  enable_dns_hostnames = "${var.vpc_booleantrue}"
  enable_dns_support = "${var.vpc_booleantrue}"
  tags {
    Name        = "Vpc ${var.tag_vpc_name}"
    Region = "${var.tag_vpc_region}"
  }
}

