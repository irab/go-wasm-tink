# PoC for running Tink in-browser with WASM

Mainly based on this [blog post](https://itnext.io/webassemply-with-golang-by-scratch-e05ec5230558) with some examples from the [Tink Developer docs](https://pkg.go.dev/github.com/google/tink/go/aead#example-package)

## Usage

Build on OSX (requires Go installed, only tested with **go1.17.5 darwin/amd64**. Needs to be built first to copy wasm_exec.js appropriate to local Golang version and also to create the main.wasm file for serving (6.9MB):

```bash
make build
```

## Run

Opens a browser tab - tested and working on **Chrome 96.0.4664.93** and **Safari 14.1.1** . Check in the dev tools console for Tink output.

```bash
make run-now
```
