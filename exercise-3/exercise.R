# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("red", "blue", "yellow", "green", "purple", "orange")

# Use the `sample` function to select a single marble
sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
tries <- 0;

MarbleGame <- function(guess){
  answer <- sample(marbles, 1)
  tries <- tries + 1;
  if(toupper(guess) == toupper(answer)){
    return (paste("You guessed right! It took you", tries, "attempt(s)!", sep = " "))
  } else{
    return(paste("Your guess was incorrect. The answer was", answer, ".", sep = " "))
  }
}

# Play the marble game!


# Bonus: Play the marble game until you win, keeping track of how many tries you take

#added functionality into Marble Game


## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability