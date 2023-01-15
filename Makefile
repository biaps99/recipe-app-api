black:
	docker-compose run --rm app sh -c "black app/ --exclude='migrations/' --line-length=88"

flake:
	docker-compose run --rm app sh -c "flake8"

migrate:
	docker-compose run --rm app sh -c "python manage.py migrate"

migrations:
	docker-compose run --rm app sh -c "python manage.py makemigrations"

test:
	docker-compose run --rm app sh -c "pytest -p no:cacheprovider --suppress-no-test-exit-code"

clean:
	docker-compose down
	docker image prune -a
