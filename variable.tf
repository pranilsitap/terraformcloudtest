variable "envtag" {
  type= string
  description = "value of tag"
  default = "east us"
}

variable "addressspace" {
  type = list
  description = "addreees space"
  default = ["10.0.0.0/24"]
}

variable "subnetp" {
     type = list
  description = "addreees pace"
  default = ["10.0.0.0/24"]

}