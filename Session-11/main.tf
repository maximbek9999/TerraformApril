resource "aws_sqs_queue" "sqs" {
  name = "${terraform.workspace}-example-queue"
}