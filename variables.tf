variable "name" {
  type = set(string)
}

variable "tags" {
  type        = map
  description = "Tags for SQS Queues"
  default     = {}
}
