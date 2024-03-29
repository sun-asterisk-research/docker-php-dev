generate:
	@./generate.sh
	@for versions in $$(ls versions_*.yml); do \
		APPEND=true ./generate.sh $$versions; \
	done

clean:
	@./generate.sh clean
	@for versions in $$(versions_*.yml); do \
		APPEND=true ./generate.sh clean $$versions; \
	done

all: clean generate
