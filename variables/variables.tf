variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
    type = string
    description = "This is the AMI ID of devops-practice which is RHEL -9"
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "tags" {
    type = map
    default = {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Terraform = "True"
    }
  
}

variable "sg_name" {
  default = "allow sshh"
}

variable "sg_descrition" {
    default = "Allow port number 22 for ssh access"
}

variable "from_port" {
    default = 22
    type = number
}

variable "to_port" {
    default = 22
    type = number
}

variable "protocol" {
    default = "tcp"
}

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"] 
}