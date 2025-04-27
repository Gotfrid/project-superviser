fetch:
	git submodule foreach --recursive git fetch
	git submodule foreach --recursive git checkout main
	git submodule foreach --recursive git pull

build:
  docker buildx bake

build-test-cypress:
	TEST_ENGINE="cypress" API_URL="http://backend:8000" BASE_URL="http://frontend:3000" docker buildx bake

build-test-playwright:
	TEST_ENGINE="playwright" API_URL="http://backend:8000" BASE_URL="http://frontend:3000" docker buildx bake

up:
  docker compose up

up-test-cypress:
	docker compose --file docker-compose.test.yml --profile cypress up

up-test-playwright:
	docker compose --file docker-compose.test.yml --profile playwright up

deploy: fetch build up

test-cy: fetch build-test-cypress up-test-cypress
test-pw: fetch build-test-playwright up-test-playwright
