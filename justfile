[doc("Pull latest changes for the supervisor & the submodules")]
fetch:
	git fetch && git pull
	git submodule foreach --recursive git fetch
	git submodule foreach --recursive git checkout main
	git submodule foreach --recursive git pull

[doc("Build docker images to run the app")]
build:
  docker buildx bake

[doc("Build docker images to test the app with cypress")]
build-test-cypress:
	TEST_ENGINE="cypress" API_URL="http://backend:8000" BASE_URL="http://frontend:3000" docker buildx bake

[doc("Build docker images to test the app with playwright")]
build-test-playwright:
	TEST_ENGINE="playwright" API_URL="http://backend:8000" BASE_URL="http://frontend:3000" docker buildx bake

[doc("Start the app")]
up:
  docker compose up

[doc("Start the cypress testing")]
up-test-cypress:
	docker compose --file docker-compose.test.yml --profile cypress up

[doc("Start the playwright testing")]
up-test-playwright:
	docker compose --file docker-compose.test.yml --profile playwright up

[doc("Fetch latest changes, build images and run the app")]
run: fetch build up

[doc("Fetch latest changes, build test images and test with cypress")]
test-cy: fetch build-test-cypress up-test-cypress

[doc("Fetch latest changes, build test images and test with playwright")]
test-pw: fetch build-test-playwright up-test-playwright
