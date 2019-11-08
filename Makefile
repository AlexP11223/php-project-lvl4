install:
	composer install

setup: install
	cp -n .env.example .env || true
	php artisan key:generate
	php artisan migrate

db-reset:
	php artisan migrate:fresh

lint:
	composer phpcs

fix-lint:
	composer phpcbf

test:
	composer phpunit

run:
	php artisan serve
