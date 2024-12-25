resource "aws_s3_bucket" "create-bucket" {
  bucket = "simple-abc-bucketabcaaaa1"
}

resource "aws_s3_object" "s3ob" {
  bucket = aws_s3_bucket.create-bucket.bucket
  source = "./file.txt"
  key = "file2.txt"

  
}