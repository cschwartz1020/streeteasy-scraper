.PHONY: build run clean infra destroy deploy

build:
	docker build -t streeteasy-scraper .

run:
	docker run --env-file .env -v ${CURDIR}/units.json:/app/units.json -v ${CURDIR}/cron.log:/app/cron.log streeteasy-scraper

clean:
	docker rm $(docker stop $(docker ps -a -q --filter ancestor=streeteasy-scraper --format="{{.ID}}"))

infra:
	eksctl create cluster -f kubernetes/cluster.yaml; \
	cd terraform && terraform apply --auto-approve

deploy:
	./bin/deploy

destroy:
	eksctl delete cluster --name streeteasy-scraper; \
	cd terraform; \
	terraform destroy --auto-approve

