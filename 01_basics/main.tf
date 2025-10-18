
# simple file resource

resource "local_file" "tf_example1" {
#   filename = "01_basics/example.txt"
    filename = "${path.module}/example${count.index}.txt"
    content = "updated content"
    count = 3
}

resource "local_sensitive_file" "tf_example2" {
    filename = "${path.module}/sensitive.txt"
    content = "this is sensitive info"
}