ORG="kuberhealthy"
IMAGE="test-external-check"
TAG="v1.4.0"

build:
	docker build -t ${ORG}/${IMAGE}:${TAG} -f cmd/test-external-check/Dockerfile .

build-unstable:
	docker build -t ${ORG}/${IMAGE}:${TAG}-unstable -f cmd/test-external-check/Dockerfile .

push:
	docker push ${ORG}/${IMAGE}:${TAG}

push-unstable:
	docker push ${ORG}/${IMAGE}:${TAG}-unstable 
