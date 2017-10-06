output "AMI" {
  value   = "${lookup(var.AMIS, var.AWS_REGION)}"
}

output "instance" {
  value   = "${aws_instance.example.id}"
}

output "public" {
  value   = "${aws_eip.ip.public_ip}"
}

output "private" {
  value  = "${aws_eip.ip.private_ip}"
}
