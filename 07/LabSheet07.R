#01
#i
#Binomial distribution

#ii
dbinom(40, 44, 92)
?dbinom

#iii
pbinom(35, 44, 0.92)

#iv
1 - pbinom(37, 44, 0.92)

#v
pbinom(42, 44, 0.92) - pbinom(39, 44, 0.92)

#02
#i
dpois(6, 4.5)
?dpois

#ii
ppois(6, 4.5, lower.tail = FALSE)

#03
#i
pexp(3, rate=1/2)
?pexp

#ii
pexp(4, rate=1/2, lower.tail = FALSE)

#iii
pexp(4, rate=1/2)-pexp(2, rate=1/2)

#04
#i
1- pnorm(37.9, 36.8, 0.4)
?pnorm

#ii
pnorm(36.9, 36.8, 0.4) - pnorm((36.4, 36.8, 0.4))

#iii
qnorm(0.012, 36.8, 0.4)
?qnorm

#iv
qnorm(0.99,36.8, 0.4)


