provider "aws" {
region= "us-west-1"
access_key= "AKIAUWJ25SUHPTOOQITS"
secret_key="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"
}
resource "aws_instance" "key"{
ami="ami-0036b4598ccd42565"
instance_type="t2.micro"
vpc_security_group_ids =[aws_security_group.demo-sg.id]
tags={
Name="production"
Environment="dev"
}
}
