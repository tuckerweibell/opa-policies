package authz

default allow = false

allow {
  input.user == "admin"
}

allow {
  input.user == "user"
  input.action == "read"
  input.resource == "graphql"
}

allow {
  input.user == "user"
  input.action == "create"
  input.resource == "item"
}

allow {
  input.user == "guest"
  input.action == "read"
  input.resource == "items"
}

