variable "AWS_ACCESS_KEY" {
	default = "<VAR>"
}
variable "AWS_SECRET_KEY" {
	default = "<VAR>"
}
variable "AWS_REGION" {
  default = "<VAR>"
}
variable "AMIS" {
  type = "map"
  default = {
    us-east-1 = "<VAR>"
  }
}

variable "PATH_TO_SECURITY" {
  default = "<VAR>"
}

variable "PATH_TO_PRIVATE_IP" {
  default = "<VAR>"
}

variable "PATH_TO_ROLE" {
  default = "<VAR>"
}

variable "PATH_TO_AWS_KEY_NAME" {
  default = "<VAR>"
}

variable "PATH_TO_INSTANCE_TYPE}" {
  default = "<VAR>"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
