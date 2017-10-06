resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}

data "aws_iam_role" "holi" {
  role_name = "${file("${var.PATH_TO_ROLE}")}"
}

resource "aws_instance" "example" {
  ami = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "${file("${var.INSTANCE_TYPE}")}"
  key_name = "${file("${var.AWS_KEY_NAME}")}"
  user_data = "${file("userdata.sh")}"
  private_ip = ["${file("${var.PATH_TO_PRIVATE_IP}")}"]
  security_groups = ["${file("${var.PATH_TO_SECURITY}")}"]
  tags {
    Name = "Name",
    Env = "Key"
  }
    provisioner "file" {
    source = "script.sh"
    destination = "/tmp/script.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "sudo /tmp/script.sh",
   ]
  }
}
