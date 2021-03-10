base_image = viktoriashelestenko/angular-starter
project = '-p test-proj'
project-test = '-p test-proj-test'
project-test-e2e = '-p test-proj-test-e2e'
project-test-unit-debug = '-p test-proj-unit-debug-service'
main_service_name = 'test-proj-service'

build:
	docker build -t viktoriashelestenko/angular-starter .

start:
	@export BASE_IMAGE=$(base_image); \
	docker-compose $(project) up -d

start-unit-headless:
	@export BASE_IMAGE=$(base_image); \
	docker-compose -f ./docker-compose.unit.headless.yml $(project-test) up --abort-on-container-exit; \
	docker-compose -f ./docker-compose.unit.headless.yml $(project-test) down

start-unit-debug:
	@export BASE_IMAGE=$(base_image); \
	docker-compose -f ./docker-compose.unit.debug.yml $(project-test-unit-debug) up --abort-on-container-exit; \
	docker-compose -f ./docker-compose.unit.debug.yml $(project-test-unit-debug) down

start-e2e-headless:
	@export BASE_IMAGE=$(base_image); \
	docker-compose -f ./docker-compose.e2e.headless.yml $(project-test-e2e) up --abort-on-container-exit; \
	docker-compose -f ./docker-compose.e2e.headless.yml $(project-test-e2e) down

start-e2e-debug:
	@export BASE_IMAGE=$(base_image); \
	docker-compose -f ./docker-compose.e2e.debug.yml $(project-test-e2e) up --abort-on-container-exit; \
	docker-compose -f ./docker-compose.e2e.debug.yml $(project-test-e2e) down

logs:
	@docker-compose $(project) logs --timestamps --tail=20 -f $(main_service_name)

stop:
	@docker-compose $(project) down
