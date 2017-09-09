dev-up:
	docker-compose up -d

dev-down:
	docker-compose down

dev-rebuild: dev-down
	docker-compose up --build -d
