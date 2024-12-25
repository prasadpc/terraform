resource "aws_iam_user" "name1" {
    name = "prasadgavali123"
  
}


resource "aws_iam_user_policy_attachment" "name" {
    user = aws_iam_user.name1.name
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  
}