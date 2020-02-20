output "sqs_name" {
  value = {
    for name in aws_sqs_queue.sqs :
    name.name => name.name
  }
}
