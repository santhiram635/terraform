variable "instances" {
    default = {
        mongodb = "t3.micro"
        redis = "t3.micro"
        mysql = "t3.small"
    }
  
}

variable "zone_id" {
    default = "Z0276032366IKHANOML69"
  
}

variable "domain_name" {
    default = "mokshi.fun"
  
}