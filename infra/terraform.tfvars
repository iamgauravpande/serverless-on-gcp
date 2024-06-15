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
    time_zone                = "UTC"
    paused                   = true
    pubsub_target_topic_name = "projects/bitlost/topics/topic1"
    pubsub_target_data       = "hello"

  }
}