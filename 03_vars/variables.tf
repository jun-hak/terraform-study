 variable "file_name-1" {
    description = "This is the name of the file 1"
    default = "example1"
    type = string
 }
  variable "file_name-2" {
    description = "This is the name of the file 2"
    default = "example2"
    type = string
 }
  variable "file_name-3" {
    description = "This is the name of the file 3"
    default = "example3"
    type = string
 }

 variable "count_num" {
    type = number
    default = 1 #주석하면 입력을 받음
 }