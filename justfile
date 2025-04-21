fetch:
	git submodule foreach --recursive git fetch
	git submodule foreach --recursive git checkout main
	git submodule foreach --recursive git pull

build:
  docker buildx bake

up:
  docker compose up

deploy: fetch build up
