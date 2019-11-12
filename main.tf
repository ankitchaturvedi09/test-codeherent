/*
* main.tf
*/

provider "aws" {
  region = ""
}

provider "google" {}

provider "azurerm" {
  environment = ""
}

provider "openstack" {}

provider "vsphere" {
  password = ""
  user     = ""
}

module "ec2-instance-simple" {
  source  = "trung/ec2-instance-simple/aws"
  version = "0.0.1"
  # Security configuration (security_group_ids, iam_instance_profile) used when provisioning EC2 instance(s)
  security_configuration = ""
  # Network configuration (subnet_ids) used when provisioning EC2 instance(s)
  network_configuration = ""
  # AMI used to provision
  ami = ""
  # Name prefix for EC2 instance(s)
  name_prefix = ""
}

module "ec2-iam-role" {
  source  = "tkskwn/ec2-iam-role/aws"
  version = "0.1.1"
  # Attache the policies to the IAM Role.
  policy_arn = ""
  # The name of the IAM Role.
  name = ""
}

module "ec2" {
  source  = "kurron/ec2/aws"
  version = "0.9.0"
  # If set to Yes, the instances will be parked on a schedule
  scheduled = ""
  # ID of the IAM profile to associate with the instances
  instance_profile = ""
  # List of subnets to create the instances in
  subnet_ids = ""
  # List of security groups to apply to the instances
  security_group_ids = ""
  # Name of the SSH key to install onto the instances
  ssh_key_name = ""
  # They instance type to build the instances from
  instance_type = ""
  # Boolean indicating if the instance should enable EBS optimization or not
  ebs_optimized = ""
  # Regular expression to use when looking up an AMI in the specified region
  ami_regexp = ""
  # Special tag value used to locate specific running instances, e.g. Docker or Bastion
  duty = ""
  # Information that does not fit in the other tags
  freetext = ""
  # Context these resources will be used in, e.g. production
  environment = ""
  # Person creating these resources
  creator = ""
  # The role the resources will play
  purpose = ""
  # Name of the project these resources are being created for
  project = ""
  # What to name the resources being created
  name = ""
  # The AWS region to deploy into (e.g. us-east-1)
  region = ""
}

module "ec2-spot" {
  source  = "kurron/ec2-spot/aws"
  version = "0.0.1"
  # whether a Spot instance stops or terminates when it is interrupted, can be stop or terminate
  instance_interruption_behaviour = ""
  # The maximum hourly price (bid) you are willing to pay for the instance, e.g. 0.10
  spot_price = ""
  # If set to Yes, the instances will be parked on a schedule
  scheduled = ""
  # ID of the IAM profile to associate with the instances
  instance_profile = ""
  # List of subnets to create the instances in
  subnet_ids = ""
  # List of security groups to apply to the instances
  security_group_ids = ""
  # Name of the SSH key to install onto the instances
  ssh_key_name = ""
  # They instance type to build the instances from
  instance_type = ""
  # Boolean indicating if the instance should enable EBS optimization or not
  ebs_optimized = ""
  # Regular expression to use when looking up an AMI in the specified region
  ami_regexp = ""
  # Special tag value used to locate specific running instances, e.g. Docker or Bastion
  duty = ""
  # Information that does not fit in the other tags
  freetext = ""
  # Context these resources will be used in, e.g. production
  environment = ""
  # Person creating these resources
  creator = ""
  # The role the resources will play
  purpose = ""
  # Name of the project these resources are being created for
  project = ""
  # What to name the resources being created
  name = ""
  # The AWS region to deploy into (e.g. us-east-1)
  region = ""
}

module "ec2-spot-instance" {
  source  = "johnypony3/ec2-spot-instance/aws"
  version = "1.0.8"
  # The maximum hourly price (bid) you are willing to pay for the instance, e.g. 0.10
  spot_price = ""
  # A list of security group IDs to associate with
  vpc_security_group_ids = ""
  # The type of instance to start
  instance_type = ""
  # ID of AMI to use for the instance
  ami = ""
  # Name to be used on all resources as prefix
  name = ""
}

module "ec2-park" {
  source  = "kurron/ec2-park/aws"
  version = "0.9.0"
  # Cron expression describing when the instances should be stopped
  stop_cron_expression = ""
  # Cron expression describing when the instances should be started
  start_cron_expression = ""
  # ARN of the role that has rights to start and stop EC2 instances
  role_arn = ""
  # Information that does not fit in the other tags
  freetext = ""
  # Context the resources will be used in, e.g. production
  environment = ""
  # Person creating the resources
  creator = ""
  # Name of the project these resources are being created for
  project = ""
  # The AWS region to deploy into (e.g. us-east-1)
  region = ""
}

module "ec2-instance" {
  source  = "Smartbrood/ec2-instance/aws"
  version = "0.2.0"
  # A list of security group IDs to associate with
  vpc_security_group_ids = ""
  # The type of instance to start
  instance_type = ""
  # ID of AMI to use for the instance
  ami = ""
  # Name to be used on all resources as prefix
  name = ""
}

module "ec2migrate" {
  source  = "outerstack/ec2migrate/aws"
  version = "1.5.0"
  # All target configuration options
  out = {}
  # All source configuration options
  in = {}
}

module "ec2-instance" {
  source  = "akbaribnu/ec2-instance/aws"
  version = "0.11.7"
}

module "alb" {
  source  = "kurron/alb/aws"
  version = "0.9.3"
}

module "lb" {
  source  = "devops-workflow/lb/aws"
  version = "3.50.0"
}

module "loadbalancer" {
  source  = "Azure/loadbalancer/azurerm"
  version = "1.2.1"
}

module "lb-internal" {
  source  = "pouya-racker/lb-internal/pouya"
  version = "0.2.0"
}
