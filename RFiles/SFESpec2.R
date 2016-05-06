# ------------------------------------------------------------------------------
# Book:         SFE
# ------------------------------------------------------------------------------
# Quantlet:     SFESpec2
# ------------------------------------------------------------------------------
# Description:  SFESpec2 computes the spectrum (frequency domain representation)
#               of AR(1) and MA(1) processes with positive or negative
#               coefficients
# ------------------------------------------------------------------------------
# Usage:        -
# ------------------------------------------------------------------------------
# Inputs:       none
# ------------------------------------------------------------------------------
# Output:       Spectrum of AR(1) and MA(1) processes
# ------------------------------------------------------------------------------
# Example:      -
# ------------------------------------------------------------------------------
# Author:       Franziska Schulz, Elisabeth Bommes, Caroline Kleist
# ------------------------------------------------------------------------------
#

par(mfrow=c(2,1), mar=c(4,4.5,1,3)+0.1, mgp=c(2.5,1,0))

Fr     = 0:50/100
n      = 250 
phi1   = 0.9 # parameter of AR(1); for negative coefficients change to -0.9
theta1 = 0.9 # parameter of MA(1); for negative coefficients change to -0.9
sigma  = 1   # variance of error term


# AR(1)
spec_ar  = sigma/(1 + phi1^2 - ( 2*phi1*cos(2*pi*Fr) ) )
x     = arima.sim(n = n,model = list(ar=phi1), rand.gen=function(n, ...) rnorm(n,0,sigma))

plot(x, type = "l", xlab = "time", ylab = expression(X[t]), lwd=2)
abline(h = 0, lty = "dotted")

spec.pgram(x, log = "no",xlab = "frequency", ylab = "Spectrum", main="", lwd=2, sub="")
lines(Fr,spec_ar,col=2,lwd=2)

# MA(1)
spec_ma  = sigma*(1 + theta1^2 + ( 2*theta1*cos(2*pi*Fr) ) )
x     = arima.sim(n = n,model = list(ma=theta1), rand.gen=function(n, ...) rnorm(n,0,sigma))

plot(x, type = "l", xlab = "time", ylab = expression(X[t]), lwd=2)
abline(h = 0, lty = "dotted")

spec.pgram(x, log = "no",xlab = "frequency", ylab = "Spectrum", main="", lwd=2, sub="")
lines(Fr,spec_ma,col=2,lwd=2)