.PHONY: all clean fmt tidy install run

all: fmt tidy install

clean:
	rm -rf bin tmp

fmt:
	find -type f -name "*.go" | xargs gofmt -l -w

tidy: fmt
	go mod tidy

install:
	go build -o ./bin/server ./cmd/server

run:
	air --build.cmd "make install" --build.bin "./bin/server" --build.exclude_dir "templates,build"
