variable "authentication_type" {
  description = "The authentication type. Valid values: API_KEY, AWS_IAM and AMAZON_COGNITO_USER_POOLS."
  type        = "string"
}

variable "name" {
  description = "A user-supplied name for the GraphqlApi."
  type        = "string"
}

variable "user_pool_config" {
  default     = {}
  description = "The Amazon Cognito User Pool configuration."
  type        = "map"
}