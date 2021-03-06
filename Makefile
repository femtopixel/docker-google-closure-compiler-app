VERSION ?= v20200920
FULLVERSION ?= v20200920
archs = amd64 arm32v6 arm64v8 i386

.PHONY: all build publish latest
all: build publish latest
build:
	cp /usr/bin/qemu-*-static .
	$(foreach arch,$(archs), \
		cat Dockerfile | sed "s/FROM openjdk:jre-alpine/FROM ${arch}\/openjdk:jre-alpine/g" > .Dockerfile; \
		docker build -t femtopixel/google-closure-compiler-app:${VERSION}-$(arch) --build-arg VERSION=${VERSION} -f .Dockerfile .;\
	)
publish:
	docker push femtopixel/google-closure-compiler-app
	cat manifest.yml | sed "s/\$$VERSION/${VERSION}/g" > manifest.yaml
	cat manifest.yaml | sed "s/\$$FULLVERSION/${FULLVERSION}/g" > manifest2.yaml
	mv manifest2.yaml manifest.yaml
	manifest-tool push from-spec manifest.yaml
latest: build
	FULLVERSION=latest VERSION=${VERSION} make publish
