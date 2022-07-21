#!/usr/bin/env Rscript
sayHello <- function() {
	print('hello')
}

sayHello()

fib.numbers <- c(1,1)
while (tail(fib.numbers, 1) < 4000000) {
    fib.numbers <- c(fib.numbers, sum(tail(fib.numbers, 2)))
}
print (fib.numbers)
print (sum (fib.numbers[fib.numbers %% 2 == 0 & fib.numbers<4000000]) )
