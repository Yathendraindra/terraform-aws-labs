#Input Variables
# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

# AWS EC2 Instance Type
variable "instance_type" {
    description = "EC2 Instance Type"
    type = string
    default = "t3.micro"
}

# AWS EC2 Key Pair Name
variable "instance_keypair" {
    description = "AWS EC2 key Pair that need to be associate with EC2 Instance"
    type = string
    default = "terraform-key"      
}

# AWS EC2 Instance type - List
variable "instance_type_list" {
    description = "List of EC2 Instance Types"
    type = list(string)
    default = ["t3.micro", "t3.small", "t3.large"]  
}

# AWS EC2 Instance type - Map
variable "instance_type_map" {
    description = "Map of EC2 Instance Types"
    type = map(string)
    default = {
        "dev" = "t3.micro",
        "qa" = "t3.small"
        "prod" = "t3.large"
    }
}