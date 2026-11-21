APP=virtual-event-expo

.PHONY: run test build clean

run:
	go run main.go

test:
	go test -v ./...

build:
	go build -o bin/$(APP).exe main.go

clean:
	if exist bin rmdir /s /q bin
