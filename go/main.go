package main

import "fmt"

func main() {
	// BUG: getVersion is never defined -> compile error
	version := getVersion()
	fmt.Println("version:", version)
}
func getVersion() string { return "1.0.0" }
