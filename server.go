package main

import (
	"log"
	"net/http"
)

const (
	AppPort      = "8081"
	TemplatesDir = "."
)

func main() {
	log.Println("Run server on :" + AppPort + " ...")
	err := http.ListenAndServe(":"+AppPort, http.FileServer(http.Dir(TemplatesDir)))
	if err != nil {
		log.Fatalln(err)
	}

}
