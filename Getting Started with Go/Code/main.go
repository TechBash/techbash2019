package main

import (
	"fmt"
	"math/rand"
	"time"
)
// Example of a struct
type Person struct {
	FirstName string
	LastName string
}
// example of a struct with a method
func (p *Person) DisplayName() string {
	return fmt.Sprintf("%s, %s", p.LastName, p.FirstName)
}


func main() {
	// populating the stuct and displaying it
	mike:= Person{
		FirstName: "Mike",
		LastName:  "Rapa",
	}

	fmt.Println("Hello,", mike.DisplayName())

	// Calling a function
	fmt.Println("1+33=", addNums(1,33))

	//Using a channel
	dataChannel := make (chan int, 10)
	go GetData(dataChannel)
	for newData := range dataChannel {
		ProcessData(newData)
	}
	fmt.Println("Ending the program")

}

func GetData(dataChannel chan int)  {
	for i := 0; i < 10; i++ {
		newNumber := rand.Intn(100)
		fmt.Println(newNumber, "Created")
		dataChannel<-newNumber
	}
	close(dataChannel)

}

func ProcessData(newData int, ){
	fmt.Println( newData, "Starting to process")
	time.Sleep(2*time.Second)
	fmt.Println(newData, "Done processing data")
}

// Example of a function with a unit test
func addNums(a int, b int) int {
	return a+b 
}


