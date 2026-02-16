# Output - For Loop with List
output "for_output_list" {
  description = "For loop with list"
  value = [for instance in aws_instance.myec2vm : instance.public_dns]
}

# Output - For Loop with Map
output "for_output_map1" {
  description = "For loop with Map"
  value = { for instance in aws_instance.myec2vm : instance.id => instance.public_dns }
}

# Output - For Loop with Map Advanced
output "for_output_map2" {
  description = "For loop with Map - Advanced"
  value = { for c, instance in aws_instance.myec2vm : c => instance.public_dns }
}

/*
# Output Legacy Splat Operator - Returns the list
output "legacy_splat_instance_publicdns" {
    description = "Legacy Splat Operator"
    value = aws_instance.myec2vm.*.public_dns 
}
*/
# Output Latest Splat Operator - Returns the list
output "latest_splat_instance_publicdns" {
    description = "Generalized latest Splat Operator"
    value = aws_instance.myec2vm[*].public_dns 
}