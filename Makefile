.PHONY: build test test-race vet lint fmt genactions

# Build the application
build:
	go build ./cmd/jjui

# Run all tests
test:
	go test ./...

# Run tests with race detector
test-race:
	go test -race ./...

# Run go vet
vet:
	go vet ./...

# Run golangci-lint
lint:
	golangci-lint run ./...

# Format code and tidy modules
fmt:
	go fmt ./...
	go mod tidy

# Regenerate action catalog from intent annotations
genactions:
	go run ./cmd/genactions
