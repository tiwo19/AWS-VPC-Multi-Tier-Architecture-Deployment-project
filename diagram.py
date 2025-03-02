from diagrams import Diagram
from diagrams.aws.network import VPC, Subnet, InternetGateway
from diagrams.aws.compute import EC2
from diagrams.aws.security import SecurityGroup

with Diagram("AWS Multi-Tier VPC", show=True):
    vpc = VPC("My VPC")
    public_subnet = Subnet("Public Subnet")
    private_subnet = Subnet("Private Subnet")
    igw = InternetGateway("Internet Gateway")
    ec2_instance = EC2("Web Server")
    sg = SecurityGroup("SG")

    vpc >> igw >> public_subnet >> ec2_instance >> sg
    vpc >> private_subnet
