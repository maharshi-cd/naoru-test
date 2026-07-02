package main

import (
       "fmt"
)

func main() {
	version := getVersion()
	fmt.Println("version:", version)
}

func getVersion() string {
       return "1.0.0"
}
