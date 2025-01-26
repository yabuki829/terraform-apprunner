

variable "app_name" {}
variable "github_repository_url" {}
variable "github_token" {}
variable "text_test" {}
variable "text_test2" {}

provider "aws" {
    region     = "ap-northeast-1"
    access_key = var.aws_access_key  
    secret_key = var.aws_secret_key 
}

module "apprunner" {
    source = "./modules/apprunner"
    app_name = var.app_name
    github_repository_url = var.github_repository_url
    github_token = var.github_token
    text_test = var.text_test
    text_test2 = var.text_test2
}
