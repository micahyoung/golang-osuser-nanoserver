package main

import (
	"fmt"
	"log"
	"os/user"
)

func main() {
	user, err := user.Current()
	if err != nil {
		log.Fatal(err)
	}

	fmt.Printf("Name: %s\n", user.Name)
}
