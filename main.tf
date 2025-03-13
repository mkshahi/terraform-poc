module "compute" {
    source = "modules/compute"
    subnet_id=modules.network.public_subnet_id
  
}

module "database" {
    source = "modules/database"
  
}

module "network" {
  source = "modules/network"

}
