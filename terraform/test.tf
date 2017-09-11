
resource "aws_instance" "example" {
  ami           = "ami-efd0428f"
  instance_type = "t2.micro"
  region = "us-west-2"
  zone = "us-west-2a" 
}
