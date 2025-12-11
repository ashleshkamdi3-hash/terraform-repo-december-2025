variable "cust_vpc_cidr" {
    default = "20.0.0.0/24"
    type= string 
}

# variable "sub_cidr" {
#     type = map(string)
#     default = {
#       "cust-pub-sub-01" = "20.0.0.0/27"
#       "cust-pub-sub-02" = "20.0.0.32/27"
#       "cust-priv-sub-01" = "20.0.0.64/27"
#     }
# }

variable "cust-subnets" {
    type = map(object({
      Name = string
      sub_cidr = string
      az = string
    }))
    default = {
    "cust-pub-sub-01" =  {
        Name = "cust-pub-sub-01"
        az = "ap-south-1a"
        sub_cidr = "20.0.0.0/28"       }
    "cust-pub-sub-02" =  {
        Name = "cust-pub-sub-02"
        az = "ap-south-1a"
        sub_cidr = "20.0.0.16/28"       }
    "cust-priv-sub-01" =  {
        Name = "cust-pub-sub-01"
        az = "ap-south-1a"
        sub_cidr = "20.0.0.32/28"       }
    "cust-pub-sub-04" =  {
        Name = "cust-pub-sub-04"
        az = "ap-south-1b"
        sub_cidr = "20.0.0.48/28"       }    
    "cust-pub-sub-05" =  {
        Name = "cust-pub-sub-05"
        az = "ap-south-1b"
        sub_cidr = "20.0.0.64/28"       }
    "cust-pub-sub-01" =  {
        Name = "cust-priv-sub-02"
        az = "ap-south-1b"
        sub_cidr = "20.0.0.80/28"       }
}
}