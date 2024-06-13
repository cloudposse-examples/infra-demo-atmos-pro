# THIS IS NOT THE TRUE IMPLEMENTATION!
# We have drastically simplified the module here for demo sake

variable "privileged" {
  type        = bool
  description = "True if the default provider already has access to the backend"
  default     = false
}

