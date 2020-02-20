resource "aws_sqs_queue" "sqs" {
  for_each                  = var.name
  name                      = each.value
  delay_seconds             = 0
  max_message_size          = 256000
  message_retention_seconds = 86400
  receive_wait_time_seconds = 0

  tags = {
    business-unit = "JMDS"
    application   = "rds-postgres"
  }
}
