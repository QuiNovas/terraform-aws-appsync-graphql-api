output "arn" {
  description = "The ARN."
  value       = "${aws_appsync_graphql_api.graphql_api.arn}"
}

output "endpoint" {
  description = "The endpoint for the API."
  value       = "${data.external.graphql_endpoint.result["endpoint"]}"
}

output "id" {
  description = "API ID."
  value       = "${aws_appsync_graphql_api.graphql_api.id}"
}