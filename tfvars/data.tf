# data "aws_ami" "joindevops"{
#     owners=["973714476881"]
#     most_recent = true

#     filter {
#         name = "name" # Name is case sensitive here. should use only name as value
#         values = ["RHEL-9-DevOps-Practice"]
#     }
# }

data "aws_ami" "joindevops" {
    owners = ["973714476881"]
    # most_recent = true


    filter {
        name = "name"
        values = ["Redhat-9-DevOps-Practice"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

}

output "ami_id" {
    value = data.aws_ami.joindevops.id
}