# Euler project problem number 3.

# Use a sieve of Eratosthenes to calcaulate primes up to the ulimit.
prime_sieve <- function(ulimit) {
    sieve <- c(rep(TRUE, ulimit))

    for(x in 2:(ulimit / 2)) {
        for(y in 2:(ulimit / x)) {
            sieve[x * y] <- FALSE
        }
    }

    return(sieve)
}

big_number <- 600851475143
sieve <- prime_sieve(as.integer(sqrt(big_number)))

# Print prime value for first 100 values (true or false)
# print(sieve[1:100])

# Get a list of all prime numbers
primes_list <- which(sieve) # equivalent to `which(sieve == TRUE)`

# Print the first hundred.
# print(primes_list[1:100])

# Print all primes that are a factor of the big number.
# print(primes_list[big_number %% primes_list == 0])

# Print out the biggest prime factor of the big number.
print(max(primes_list[big_number %% primes_list == 0]))

