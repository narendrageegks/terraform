data "aws_ami" "demo" {
  most_recent = true

  owners = ["383501092354"]

  filter {
    name   = "image-id"
    values = ["ami-06459bdf8740a1459"]
  }
}


data "aws_security_groups" "vpc_security_group" {

  filter {
    name   = "vpc-id"
    values = [aws_vpc.main.id]
  }

}
data "aws_subnets" "vpc_security_group" {

  filter {
    name   = "vpc-id"
    values = [aws_vpc.main.id]
  }
  
}
output "subnet_id" {
  value = [data.aws_subnets.vpc_security_group.ids]
}


