data "aws_ami" "example" { 
    owners           = ["973714476881"]
    most_recent      = true
    
    filter {
        name   = "name"
        values = ["Redhat-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

output "ami_id" {
    value = data.aws_ami.example.id
}

data "aws_instance" "mongodb" {
    instance_id = "i-03be018e35633dc4a"  #replace with your id
}

output "mongodb_info" {
    value = data.aws_instance.mongodb.public_ip  # we are qurrey the public ip of existing mongodb instance
}


