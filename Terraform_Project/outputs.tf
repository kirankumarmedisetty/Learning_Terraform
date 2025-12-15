########################################
# outputs.tf
########################################
output "server_ips" {
  description = "Public IPs of created servers"
  value       = { for name, inst in aws_instance.servers : name => inst.public_ip }
}