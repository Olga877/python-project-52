install:
	uv sync

build:
	./build.sh

collectstatic:
	uv run python manage.py collectstatic --noinput

migrate:
	uv run python manage.py migrate

render-start:
	gunicorn task_manager.wsgi

run:
	uv run python manage.py runserver

lint:
	uv run ruff check

translate:
	uv run django-admin makemessages -l ru --ignore=".venv" uv run python manage.py compilemessages --ignore=".venv"
