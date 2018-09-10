resource "aws_appsync_graphql_api" "graphql_api" {
  authentication_type = "${var.authentication_type}"
  name                = "${var.name}"
  user_pool_config    = "${var.user_pool_config}"
}

data "external" "graphql_endpoint" {
  program = [
    "bash",
    "${path.module}/get-graphql-endpoint.sh"
  ]
  query {
    api_id = "${aws_appsync_graphql_api.graphql_api.id}"
  }
}
