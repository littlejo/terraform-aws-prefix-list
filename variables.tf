variable "name" {
  description = "Name of prefix list"
  type        = string
}

variable "address_family" {
  description = "Address family"
  default     = "IPv4"
  type        = string
}

variable "max_entries" {
  description = "Max entries"
  type        = number
}

variable "entries" {
  description = "entries"
  type        = map(any)
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
