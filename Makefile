build:
	docker build -t quay.io/codaisseur/codaisseur-ts-ci:${TAG} .

push:
	docker push quay.io/codaisseur/codaisseur-ts-ci:${TAG}
