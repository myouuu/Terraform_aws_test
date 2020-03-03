resource "aws_key_pair" "admin" {
   key_name   = "admin"
   public_key = "ssh-rsa AAAAB3NzaC1yc2AAAAADAQBBAAABAQDGm7qYXR3jG601MSaKo+5zZGUgw3bdw2c2cDcUY2ip1KPborFf1QZjMtIZy0oZCV++4WL7prYFoAGefGOLF8VR3qCVy+5ziYuh5D6rZqXm3jfdW76ARm/NNLEK4wnl6bgs2sKyC1pq53US8IRcSyJdZlIjD+fwPLxkHHTmFh/stFRJGSL0GbiXcN14KBqB1WfJqQ20h4l3qVvXU+lhQKrYgsR+0GeRbh6X7FZ8vIrp9O58wM5fVHkkAibugUx+zSArL8aQkhtuhT/F9Rn8b/cY5yF/MDYqth9harKlPc77j1igdRjLuRiZHyPwYXtrX4Q/ISjx4XOaumOP9d170Hhp chaica@fixe"
 }
 resource "aws_instance" "server1" {
   ami           = "ami-045fa58af83eb0ff4"
   instance_type = "t2.micro"
   key_name      = "admin"
 }