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
	n := <- c
	fmt.Println(n)
	if creditCardIsValid(n) {
		fmt.Println("CARD VALID... processing")
		time.Sleep(1 * time.Second)
		fmt.Println("Transaction successfully processed.")
	}
}

func cardInformationReceived(c chan []int) {
	time.Sleep(10 * time.Second)
	n := []int{5478 , 5005100120018501}
	c <- n
}

func creditCardIsValid(i []int) bool {
	if lengthOfInt(i[0]) != 4 && lengthOfInt(i[1]) != 16 {
		return false
	} else {
		return true
	}
}

func lengthOfInt(i int) int {
	n := 0
	for i != 0 {
		n++
		i--
	}
	return n
}