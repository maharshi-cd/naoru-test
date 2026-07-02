package main

import (
	"fmt"
)

func getVersion() string {
	return "1.0.0"
}

func main() {
	version := getVersion()
	fmt.Println("version:", version)
}
