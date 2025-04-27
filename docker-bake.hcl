group default {
  targets = ["backend", "frontend", "testing"]
}

variable "API_URL" {
  default = "http://0.0.0.0:8000"
}

variable "BASE_URL" {
  default = "http://0.0.0.0:3000"
}

variable "TEST_ENGINE" {
  default = "cypress"
}

target backend {
  context = "./project-backend/"
  tags = ["project-backend:latest"]
}

target frontend {
  context = "./project-frontend/"
  tags = ["project-frontend:latest"]
  args = {
    API_URL = "${API_URL}"
  }
}

target testing {
  context = "./project-testing/"
  dockerfile = "Dockerfile.${TEST_ENGINE}"
  tags = ["project-testing:latest"]
  args = {
    BASE_URL = "${BASE_URL}"
  }
}
