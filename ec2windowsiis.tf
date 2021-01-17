#Configurando o provider 

provider "aws" {
  region  = "us-east-2"
  shared_credentials_file = "/root/.aws/credentials"
  profile = "default"
}

#Configurando instância webserver iis

resource "aws_instance" "labiis" {
  ami = "ami-0f5761c546ea1265a"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0c0971f52bb81021e"]
  subnet_id = "subnet-0183a493d4d475f8a"
  key_name = "marcus-lab"
  tags = {
    Name = "lab-neon-marcus-wbiis"
    env = "lab-marcus"
  }
}