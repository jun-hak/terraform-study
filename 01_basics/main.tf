
# simple file resource

resource "local_file" "tf_example1" {
#   filename = "01_basics/example.txt"
    filename = "${path.module}/example1.txt"
    content = "updated content"
}

resource "local_sensitive_file" "tf_example2" {
    filename = "${path.module}/sensitive.txt"
    content = "this is sensitive info"
}