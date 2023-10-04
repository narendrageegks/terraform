resource "aws_iam_policy" "policy_two" {
  name = "EC2_Read_write"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        "Sid" : "VisualEditor0",
        "Effect" : "Allow",
        "Action" : "s3:*",
        "Resource" : "*"
      },
    ]
  })
}