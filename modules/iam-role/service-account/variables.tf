variable "prefix" {
  type = string
}

variable "region" {
  type = string
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "policy_arns" {
  type = set(string)
}

variable "cluster_name" {
  type = string
}

variable "namespace" {
  type = string
}

variable "app_id" {
  type = string
}

variable "env_id" {
  type = string
}

variable "res_id" {
  type = string
}
