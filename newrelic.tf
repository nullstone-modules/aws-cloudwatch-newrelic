data "ns_connection" "newrelic" {
  name     = "newrelic"
  type     = "newrelic/aws"
  contract = "datastore/aws/newrelic"
}

locals {
  delivery_stream_arn = data.ns_connection.newrelic.outputs.delivery_stream_arn
  delivery_role_arn   = data.ns_connection.newrelic.outputs.delivery_role_arn
}
