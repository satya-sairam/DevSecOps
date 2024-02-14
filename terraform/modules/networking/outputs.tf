output "vpc_id" {
    value = aws_vpc.my_vpc.id
  
}


output "pvt_subnet_id" {
    value = aws_subnet.pvt_subnet.id
  
}

output "pub_subnet_id" {
    value = aws_subnet.pub_subnet.id
  
}
output "pub_route_table_id" {
    value = aws_route_table.pub_rt.id
  
}
output "pvt_route_table_id" {
    value = aws_route_table.pvt_rt.id
  
}
output "igw_id" {
    value = aws_internet_gateway.igw.id
  
}
output "ng_id" {
    value = aws_nat_gateway.ngw.id
  
}
