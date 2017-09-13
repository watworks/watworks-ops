resource "aws_instance" "example" {
   ami           = "ami-efd0428f"
   instance_type = "t2.micro"
   subnet_id = "subnet-ba6574dd"
 }
