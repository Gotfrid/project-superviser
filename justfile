fetch:
	git submodule foreach --recursive git fetch
	git submodule foreach --recursive git checkout main
	git submodule foreach --recursive git pull

build:
  docker buildx bake

up:
  docker compose up

up-test:
	docker compose -f docker-compose.test.yml up

deploy: fetch build up

test: fetch build up-test
