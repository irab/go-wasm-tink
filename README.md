# PoC for running Tink in-browser with WASM

Mainly based on this [blog post](https://itnext.io/webassemply-with-golang-by-scratch-e05ec5230558) with some examples from the [Tink Developer docs](https://pkg.go.dev/github.com/google/tink/go/aead#example-package)

## Usage

Build on OSX (requires Go installed, only tested with **go1.17.5 darwin/amd64** :

```bash
make build
```

## Run

Opens a browser tab. Check in the dev tools console for Tink output.

```bash
make run-now
```
