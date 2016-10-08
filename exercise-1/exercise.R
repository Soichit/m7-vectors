# Exercise 1: Creating and Indexing Vectors

# Create a vector `x` that has the values 10 through 20 in it (using the `:` operator)
x <- c(10:20)
print(x)
# Create a vector `y` that has the values 21 through 30 in it (using the `seq` operator)
y <- seq(21, 30)
print(y)

# Create a vector `z` by combining the vectors `x` and `y`
z <- x + y
print(z)

# Create a variable `w` that is equal to the 11th element in your vector `z`
w <- z[11]

# Create a vector `q` that is equal to the second through the 5 elements of `z`
q <- z[c(2:5)]
print(q)
# Create a variable `len` that is equal to the length of your vector `q`
len <- length(q)

### Bonus ###

# Create a vector `odd` that holds the odd numbers from 1 to 100
odd <- seq(1, 100, 2)
print(odd)

# Using the `all` function, confirm that all of the numbers in your `odd` vector are odd
# do later
# all(odd % 2 == 1)
