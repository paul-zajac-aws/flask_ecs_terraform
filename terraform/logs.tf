# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "flask_tf_log_group" {
  name              = "/ecs/flask-tf-app"
  retention_in_days = 30

  tags = {
    Name = "flask-tf-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "flask_tf_log_stream" {
  name           = "flask-tf-log-stream"
  log_group_name = aws_cloudwatch_log_group.flask_tf_log_group.name
}

