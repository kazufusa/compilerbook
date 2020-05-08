test:
	docker-compose run --rm compilerbook make test

clean:
	cd 9cc && make clean

.PHONY: test clean
