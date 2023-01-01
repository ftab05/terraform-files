module "vpc"{
    source = "./modules/vpc"
}

module "eks"{
    source = "./modules/eks"
    vpc_id = module.vpc.vpc_id
    private_subnets = module.vpc.private_subnets_id
}

module "rds"{
    source = "./modules/rds"
}