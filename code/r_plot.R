

# Tossing a coin
n <- floor(runif(1000000)*2)
t <- table(n)
barplot(t/1000000, xlab="A = 'Tossing a coin'", ylab="P(A)", names.arg=c("Tail", "Head"), col="darkred")

# Tossing a die
n <- floor(runif(1000000)*6) + 1
t <- table(n)
barplot(t/1000000, xlab="B = 'Tossing a die'", ylab="P(B)", col="darkred")

