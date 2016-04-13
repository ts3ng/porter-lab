package main

import (
	"fmt"
	"net/http"
	"os"
)

const port = "3000"

func Health(w http.ResponseWriter, r *http.Request) {
	// default is a 200 response
}

func HelloWorld(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("Hello world\n"))
}

func Log(w http.ResponseWriter, r *http.Request) {
	fmt.Println("Hello world")
}

func main() {

	for _, kvp := range os.Environ() {
		fmt.Println(kvp)
	}

	http.HandleFunc("/health", Health)
	http.HandleFunc("/hello", HelloWorld)
	http.HandleFunc("/log", Log)

	fmt.Println("listening on port ", port)
	http.ListenAndServe(":"+port, nil)
}
