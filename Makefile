CONTAINER=fastapi-app-api

migrate:
	docker exec $(CONTAINER) alembic revision --autogenerate

upgrade:
	docker exec $(CONTAINER) alembic upgrade head

downgrade:
	docker exec $(CONTAINER) alembic downgrade -1

migrate-history:
	docker exec $(CONTAINER) alembic history --verbose
