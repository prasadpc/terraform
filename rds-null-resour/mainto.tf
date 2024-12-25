# resource "null_resource" "example" {
#   triggers = {
#     always_run = "${timestamp()}" # Recreates the resource every time
#   }

#   provisioner "local-exec" {
#     command = "echo Hello, World!"
#   }
# }
