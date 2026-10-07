# 1. Find factors of a number

n <- 12

cat("Factors of", n, "are: ")

for(i in 1:n)
{
  if(n %% i == 0)
  {
    cat(i, " ")
  }
}


# 2. Generate 10 random integers between -50 and 50

numbers <- sample(-50:50, 10)

cat("\n\n10 Random numbers:\n")
print(numbers)


# 3. FizzBuzz from 1 to 100

cat("\nFizzBuzz:\n")

for(i in 1:100)
{
  if(i %% 3 == 0 && i %% 5 == 0)
  {
    print("FizzBuzz")
  }
  else if(i %% 3 == 0)
  {
    print("Fizz")
  }
  else if(i %% 5 == 0)
  {
    print("Buzz")
  }
  else
  {
    print(i)
  }
}