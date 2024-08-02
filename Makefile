.PHONY: up spec rubocop annotate

up:
	docker compose up -d

down:
	docker compose down

build:
	docker compose build

spec:
	docker compose exec api bundle exec rails spec

spec_file:
	docker compose exec api bundle exec rails spec $(FILE)

rubocop:
	docker compose exec api bundle exec rubocop --config .rubocop.yml

rubocop-a:
	docker compose exec api bundle exec rubocop --config .rubocop.yml -A

annotate:
	docker compose exec api bundle exec annotate

migrate:
	docker compose exec api rails db:migrate

rollback:
	docker compose exec api rails db:rollback

seed:
	docker compose exec api rails db:seed

c:
	docker compose exec api rails c

install:
	docker compose exec api bundle install

migrate-status:
	docker compose exec api rails db:migrate:status 
