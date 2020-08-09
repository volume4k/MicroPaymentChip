package main

import (
	"fmt"
	"time"
)

var version string

func main(){
	version = "0.1-alpha"
	fmt.Println("This is the Client Base from MicroPaymentChip.")
	initialize()
}

func initialize(){
	fmt.Println("MicroPaymentChip Client running version: " + version)
	handle()
}

func handle(){
	fmt.Println("Client started successfully!")
	openToReadCard()
}

func openToReadCard() {
	c := make(chan []int, 2)
	go cardInformationReceived(c)
	fmt.Println(<- c)
}

func cardInformationReceived(c chan []int) {
	time.Sleep(10 * time.Second)
	n := []int{5478 , 5005100120018501}
	c <- n
}