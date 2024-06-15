pubsub = {
  "topic1" = {
    name                       = "topic1"
    message_retention_duration = "3600s"
  }
}

job = {
  "job1" = {
    name                     = "job1"
    description              = "First Job"
    schedule                 = "0 0 * * *"
    region                   = "asia-south1"
    time_zone                = "Etc/UTC"
    paused                   = true
    pubsub_target_topic_name = "projects/bitlost/topics/topic1"
    pubsub_target_data       = "hello"

  }
}

vpc = {
  "vpc01" = {
    name = "vpc01"
    auto_create_subnetworks = false
  }
}