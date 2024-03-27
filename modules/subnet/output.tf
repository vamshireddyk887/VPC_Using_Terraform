# Create terraform output variables for the subnet IDs
output "subnet_id" {
  description = "The ID of the public subnet 1"
  value       = aws_subnet.generic_subnet.id
}