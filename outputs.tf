output "endpoint" {
  description = "The endpoint for the API."
  value       = data.external.graphql_endpoint.result["endpoint"]
}

