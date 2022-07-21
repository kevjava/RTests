#!/usr/bin/env Rscript
say_hello <- function() {
    print("hello")
}

sayHello()

# Start the Fibonacci sequence with [1, 1]
fib_numbers <- c(1, 1)

# Fill up the sequence until our numbers get to four million.
while (tail(fib_numbers, 1) < 4000000) {
    fib_numbers <- c(fib_numbers, sum(tail(fib_numbers, 2)))
}

print(fib_numbers)

# Print out the sum of all even Fibonacci numbers below four million.
print(sum(fib_numbers[fib_numbers %% 2 == 0 & fib_numbers < 4000000]))
