resource "aws_security_group" "bad_example" {
  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    # ggignore-iac: GG_IAC_0003
    cidr_blocks = [  # ggignore-iac: GG_IAC_0003
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

