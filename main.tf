data "external" "graphql_endpoint" {
  program = [
    "bash",
    "${path.module}/get-graphql-endpoint.sh",
  ]
  query = {
    api_id = var.graphql_api_id
  }
}

