variable "aws_region" {
  type        = string
  description = "AWS region to deploy into"
  default     = "us-east-1"
}

variable "ami_id" {
  type        = string
  description = "Amazon Linux 2023 AMI ID for us-east-1"
  default     = "ami-098e39bafa7e7303d"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.small"
}

variable "key_name" {
  type        = string
  description = "Name of the EC2 key pair for SSH access"
  default     = "cs312-key"
}

variable "my_ip" {
  type        = string
  description = "Your current public IP in CIDR notation for SSH access"
}

variable "ecr_image" {
  type        = string
  description = "Full ECR image URI with tag to deploy"
  default     = "339712756067.dkr.ecr.us-east-1.amazonaws.com/minecraft-server:mc-1.21.4-java21"
}

variable "s3_backup_bucket" {
  type        = string
  description = "S3 bucket name for world data backups"
  default     = "minecraft-backup-339712756067"
}
