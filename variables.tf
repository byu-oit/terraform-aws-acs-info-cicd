variable "name" {
  type        = string
  description = "Used to prefix created resource names"
}

variable "tags" {
  type        = map(string)
  description = "A map of AWS Tags to attach to each resource created"
  default     = {}
}

