# PubSUb Module:
module "pubsub" {
  source = "./modules/pubsub"
  pubsub = var.pubsub
}

module "cloudscheduler" {
  source = "./modules/cloudscheduler"
  job    = var.job
  depends_on = [
    module.pubsub
  ]
}