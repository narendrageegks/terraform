resource "aws_key_pair" "launch_tamplate" {
  key_name   = "deployer-key"
  public_key = file("${path.module}/rsa.pub")
}