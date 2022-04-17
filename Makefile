go-init:
	docker compose run --rm app go mod init github.com/MaxwelMazur/study-go-with-docker-compose

go-tidy:
	docker compose run --rm app go mod tidy

# created to the current directory with the default settings
air-init:
	docker compose run --rm app air init

docker-up:
	docker compose up

docker-build:
	docker compose build

migrate:
	docker compose --profile tools run migrate

create-migration:
	docker compose --profile tools run create-migration create_items

psql:
	docker compose exec db psql -U local-dev -d api