data "aws_subnet" "public_1" {
  filter {
    name   = "tag:Name"
    values = ["hackaton-vpc-1"]
  }
}

data "aws_subnet" "public_2" {
  filter {
    name   = "tag:Name"
    values = ["hackaton-vpc-2"]
  }
}

data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = ["hackaton-vpc"]
  }
}
