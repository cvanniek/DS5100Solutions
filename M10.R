# Exercise 10.1.

# Initialize the first two Fibonacci numbers
fib <- numeric(10)
fib[1] <- 1
fib[2] <- 1

# Calculate the next Fibonacci numbers
for (i in 3:10) {
  fib[i] <- fib[i-1] + fib[i-2]
}

# Print the first 10 Fibonacci numbers
print(fib)

# --------------------------------------------------------#

# Exercise 10.2.

fibonacci <- function(n=10){
  # Initialize the first two Fibonacci numbers
  fib <- numeric(10)
  fib[1] <- 1
  fib[2] <- 1
  
  # Calculate the next Fibonacci numbers
  for (i in 3:n) {
    fib[i] <- fib[i-1] + fib[i-2]
  }
  return(fib)
}

first_10_fib <- fibonacci(10)
print(first_10_fib)

# -------------------------------------------------------#

# Exercise 10.3.

function1 <- function(x){
  if (x <= 1 & x >= 0){
    return(1)
  }
  else{
    return(0)
  }
}

function1(0.5)
function1(5)

# -------------------------------------------------------#

# Exercise 10.4.

function1(0.5)
function1(5)
function1(0.8567)
function1(1)
function1(0)
function1(1238)

# -------------------------------------------------------#

# Exercise 10.5.


print(head(letters, 10))
print(head(LETTERS, 10))
print('Letters Between 22nd and 24th letters in UPPERCASE:')
print(LETTERS[22:24])

# -------------------------------------------------------#

# Exercise 10.6.

for (n in 1:100){
  if (n %% 3 == 0 && n %% 5 == 0){
    print(paste(n, 'FizzBuzz'))
  }
  else if (n %% 3 == 0){
    print(paste(n, 'Fizz'))
  }
  else if (n %% 5 == 0){
    print(paste(n, 'Buzz'))
  }
  else print(paste(n))
}

# -------------------------------------------------------#

# Exercise 10.7.

string_elements <- 'My name is Chris van Niekerk'
vector_elements <- c(1, 2, 3, 5, 3, 7, 8, 2, 1)

# Split string into individual characters:
char_vector <- strsplit(string_elements, NULL)[[1]]

unique_chars <- unique(char_vector)

print(unique_chars)

unique_numbers <- unique(vector_elements)

print(unique_numbers)

# -------------------------------------------------------#

# Exercise 10.8.

numbers <- c(1,2,3,4,5,6,7,8)
num_max <- max(numbers)
num_min <- min(numbers)
print(paste("Minimum value:", num_min))
print(paste("Maximum value:", num_max))

# -------------------------------------------------------#

# Exercise 10.9.

print(seq(20,50))
print(mean(20:60))
print(sum(51:91))

# -------------------------------------------------------#

# Exercise 10.10.

name <- c('Chris', 'James', 'Kurt', 'Akaash', 'Anjali', 
          'Chloe', 'Vish', 'Trent', 'Disha', 'Gabi')

value <- c(12.8, 34.9, 45.53, 64.64, 54.0, 90.9876, 87.1, 76.3, 67.3, 55.55)

quantity <- c(8,6,3,14,5,16,7,8,19,10)

status <- c(T, F, F, T, F, T, T, T, T, F)

df <- data.frame(name, value, quantity, status)
print(df)

# -------------------------------------------------------#

# Exercise 10.11.

head(airquality)

airquality[c(3,5), c(1,3)]

# -------------------------------------------------------#

# Exercise 10.12.

plot(mtcars[c('hp', 'cyl', 'mpg')])
