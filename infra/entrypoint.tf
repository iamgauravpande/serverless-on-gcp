## PubSUb Module:
module "pubsub" {
    source = "./infra/modules/pubsub"
    pubsub = var.pubsub
}