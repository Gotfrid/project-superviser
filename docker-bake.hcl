group default {
  targets = ["backend", "frontend", "testing"]
}

variable "API_URL" {
  default = "http://0.0.0.0:8000"
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
  tags = ["project-testing:latest"]
}
