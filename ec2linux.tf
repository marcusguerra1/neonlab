#Configurando o provider 

provider "aws" {
  region  = "us-east-1"
  shared_credentials_file = "/root/.aws/credentials"
  profile = "default"
}

#Configurando instância webserver apache

resource "aws_instance" "labapache" {
  ami = "ami-0885b1f6bd170450c"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0c0971f52bb81021e"]
  subnet_id = "subnet-0183a493d4d475f8a"
  key_name = "marcus-lab"
  tags = {
    Name = "lab-neon-marcus-wbapache"
    env = "lab-marcus"
  }
}