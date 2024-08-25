variable "desired_capacity" {
  description = "desired number of running nodes"
  default     = 3
}

variable "container_port" {
  default = "3000"
}

variable "image_tag" {
  default = ""
}

variable "image_url" {
  default = "ecr_url"
}

variable "memory" {
  default = "512"
}

variable "cpu" {
  default = "256"
}

variable "cluster_name" {
  default = "cluster_name"
}

variable "cluster_task" {
  default = "cluster_task_name"
}
variable "cluster_service" {
  default = "cluster_service_nae"
}

variable "pub_subnet_a" {
  default = "subnet_id"
}
variable "pub_subnet_b" {
  default = "subnet_id"
}
variable "vpc_id" {
  default = "vpc_id"
}
