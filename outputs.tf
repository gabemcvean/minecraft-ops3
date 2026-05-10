output "instance_public_ip" {
  description = "Public IP of the Minecraft EC2 instance"
  value       = aws_instance.minecraft.public_ip
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.minecraft.id
}
