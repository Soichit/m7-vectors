# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c('red', 'blue', 'yellow', 'green', 'purple', 'yellow')

# Use the `sample` function to select a single marble
SelectMarble <- function(marbles) {
  return (marbles[1])
}

SelectMarble(marbles)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)

MarbleGame <- function(guess) {
  random <- sample(marbles, 1)
  #print(random)
  if (random == guess) {
    guess.correct <- "Correct!"
  } else {
    guess.correct <- "Wrong!"
  }
  sentence <- paste(guess.correct, "The marble selected was", random)
  return (sentence)
}

# Play the marble game!
MarbleGame("red")

# Bonus: Play the marble game until you win, keeping track of how many tries you take
PlayTillWin <- function() {
  guess.correct <- ""
  count <- 0
  while (guess.correct != "Correct!") {
    sentence <- MarbleGame("red")
    guess.correct <- substr(sentence, 1, 8)
    count <- count + 1
  }
  return (count)
}

PlayTillWin()

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
PlayMultipleTimes <- function(n) {
  count <- 0
  sum <- 0
  for (i in 1:n) {
    sum <- sum + PlayTillWin()
    count <- count + 1
  }
  return (sum / count)
}

PlayMultipleTimes(1000)



