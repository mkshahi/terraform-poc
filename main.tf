module "compute" {
    source = "./modules/compute"
    subnet_id=module.network.public_subnet_id
    instance_type = var.instance_type
  
}

module "database" {
    source = "./modules/database"
    db_instance_class = var.db_instance_class
    db_name = var.db_name
  db_username = var.db_username
  db_password = var.db_password
  subnet_ids = [module.network.private_subnet_id]
  
}

module "network" {
  source = "./modules/network"
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr=var.private_subnet_cidr
  vpc_cidr = var.vpc_cidr

}
