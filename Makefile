PHP_VERSION?=7.4
DEBIAN_SUITE?=buster

ALL_VERSIONS=7.3 7.4

IMAGES=$(ALPINE_IMAGES) $(DEBIAN_IMAGES)

alpine:
	@echo "Generating sunasteriskrnd/php-workspace:$(PHP_VERSION)-alpine"
	@./generate.sh $(PHP_VERSION) alpine

debian:
	@echo "Generating sunasteriskrnd/php-workspace:$(PHP_VERSION)-$(DEBIAN_SUITE)"
	@DEBIAN_SUITE=$(DEBIAN_SUITE) ./generate.sh $(PHP_VERSION) $(DEBIAN_SUITE)

all:
	@for version in $(ALL_VERSIONS); do \
		PHP_VERSION=$$version $(MAKE) -s alpine debian; \
	done

clean:
	rm -rf $(ALL_VERSIONS)
	docker ps -qf ancestor=sunasteriskrnd/php-workspace | xargs -r docker kill
	docker ps -aqf ancestor=sunasteriskrnd/php-workspace | xargs -r docker rm
	docker images -q sunasteriskrnd/php-workspace | xargs -r docker rmi -f
