build_dev:
	docker-compose build --no-cache

start_dev:
	docker-compose up -d

stop_dev:
	docker-compose stop

goto_php_container:
	docker exec -ti -u root KiaLaPlusGrosse_php bash
