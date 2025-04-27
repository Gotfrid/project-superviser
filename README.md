# Project

## Tech Stack

- Backend: [Python](https://www.python.org/), [FastAPI](https://fastapi.tiangolo.com/), [Pytest](https://docs.pytest.org/)
- Frontend: [Typescript](https://www.typescriptlang.org/), [React](https://react.dev/), [Vite](https://vite.dev/), [Vitest](https://vitest.dev/)
- Quality Assurance: [Cypress](https://www.cypress.io/), [Playwright](https://playwright.dev/)
- Deploymet: [Docker](https://www.docker.com/), [Docker Compose](https://docs.docker.com/compose/), [Docker Bake](https://docs.docker.com/build/bake/)
- Misc: [Justfile](https://just.systems/man/en/), [Github](https://github.com/)

## Deployment

Fetch latest changes from main, build docker images,
and run the docker-compose stack with FE & BE.

```sh
just deploy
```

## Testing

For the example purpose, there are two testing engines implemented:
Cypress and Playwright. Both have their advantages,
and various teams might use one or another.

### Cypress

```sh
just test-cy
```

### Playwright

```sh
just test-pw
```
