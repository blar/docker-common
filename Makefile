all: common

common:
	docker build --pull --compress --tag foobox/common:latest .
