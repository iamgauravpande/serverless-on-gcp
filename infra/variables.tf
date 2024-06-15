variable "pubsub" {
  type = map(object({
    name                       = string
    message_retention_duration = string
  }))
}

variable "job" {
    type = map(object({
      name = string
      description = string
      schedule = string
      region = string
      time_zone = string
      paused = bool
      pubsub_target_topic_name = string
      pubsub_target_data = string
    }))
  
}

variable "vpc" {
    type = map(object({
      name = string
      auto_create_subnetworks = bool
    }))
}