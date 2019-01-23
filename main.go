package main

import (
	"fmt"
	"os"
	"time"
)

func main() {
	for {
		_, _ = fmt.Fprint(os.Stderr, "This is STD ERR\n")
		_, _ = fmt.Fprint(os.Stdout, "This is STD OUT\n")
		time.Sleep(5 * time.Second)
	}
}
