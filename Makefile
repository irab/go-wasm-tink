LDFLAGS =
GO = $(shell which go)
GORUN = $(GO) run $(LDFLAGS)
APP_PORT=8081


help : Makefile
	@echo "+--------------------+"
	@echo "| AVAILABLE COMMANDS |"
	@echo "+--------------------+\n"
	@cat $< | grep "##" | sed -n 's/^## /make /p' | column -t -s ':' && echo ""

## build: build the app binary
build:
	cd app
	GOOS=js GOARCH=wasm go build -o main.wasm ./app
	cd ..
	cp "$(shell go env GOROOT)/misc/wasm/wasm_exec.js" .

## run: only start application server.
run:
	$(GORUN) server.go

## run-now: start application server and open it in web-browser.
run-now:
	make run&
	open "http://127.0.0.1:$(APP_PORT)"
