docker-build:
	docker build -t athena-schemae .

docker-push:
	docker tag athena-schemae:latest 096202052535.dkr.ecr.us-west-2.amazonaws.com/athena-schemae:latest
	docker push 096202052535.dkr.ecr.us-west-2.amazonaws.com/athena-schemae:latest
