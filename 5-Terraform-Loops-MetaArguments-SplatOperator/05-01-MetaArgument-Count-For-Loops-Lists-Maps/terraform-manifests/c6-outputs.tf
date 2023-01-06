# Terraform Output Values
/* Concepts Covered
1. For Loop with List
2. For Loop with Map
3. For Loop with Map Advanced
4. Legacy Splat Operator (latest) - Returns List
5. Latest Generalized Splat Operator - Returns the List
*/

# Output - For Loop with List
output "for_output_list" {
  description = "Tra ve List cac ec2 tao ra theo: dns"
  value = [for instance in aws_instance.myec2vm: instance.public_dns]
}

# Output - For Loop with Map
output "for_output_map1" {
  description = "Tra ve Map cac ec2 tao ra theo: id va dns"
  value = {for instance in aws_instance.myec2vm: instance.id => instance.public_dns}
}

# Output - For Loop with Map Advanced, c là số thứ tự
output "for_output_map2" {
  description = "Tra ve Map cac ec2 tao ra theo: so thu tu va dns"
  value = {for c, instance in aws_instance.myec2vm: c => instance.public_dns}
}

# Output Legacy Splat Operator (Legacy) - Returns the List
/*
output "legacy_splat_instance_publicdns" {
  description = "Legacy Splat Operator"
  value = aws_instance.myec2vm.*.public_dns
}
*/

# Output Latest Generalized Splat Operator - Returns the List
output "latest_splat_instance_publicdns" {
  description = "Tra ve List cac ec2 tao ra theo: dns"
  value = aws_instance.myec2vm[*].public_dns
}