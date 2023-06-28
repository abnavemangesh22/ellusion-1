

module "mywebserver" {
  
  source = "./modules/httpd"

}

output "myip" {
  value = module.mywebserver.myip
}