package main

import "fmt"

var version string

func main(){
	version = "0.1-alpha"
	fmt.Println("This is the Client Base from MicroPaymentChip.")
	initialize()
}

func initialize(){
	fmt.Println("MicroPaymentChip Client running version: " + version)
}