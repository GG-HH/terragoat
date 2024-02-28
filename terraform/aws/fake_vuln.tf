# CONTAINS
#   2 GG_IAC_0003
# GG_IAC_0003 HIGH twice
resource "aws_security_group" "bad_example" {
  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = [
    "0.0.0.0/0"] # very broad network subnet trigger GG_IAC_0003
  }
  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = [
    "0.0.0.0/0"] # very broad network subnet trigger GG_IAC_0003
  }
 }
