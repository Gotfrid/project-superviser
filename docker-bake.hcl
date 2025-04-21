group default {
  targets = ["backend", "frontend", "testing"]
}

target backend {
  context = "./project-backend/"
  tags = ["project-backend:latest"]
}

target frontend {
  context = "./project-frontend/"
  tags = ["project-frontend:latest"]
}

target testing {
  context = "./project-testing/"
  tags = ["project-testing:latest"]
}
