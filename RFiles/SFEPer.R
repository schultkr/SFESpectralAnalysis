# ------------------------------------------------------------------------------
# Book:         SFE
# ------------------------------------------------------------------------------
# Quantlet:     SFEPer
# ------------------------------------------------------------------------------
# Description:  SFEPer computes time series plots for the time domain and the   
#               frequency domain, i.e. the periodogram
# ------------------------------------------------------------------------------
# Usage:        -
# ------------------------------------------------------------------------------
# Inputs:       SOI data
# ------------------------------------------------------------------------------
# Output:       Periodogram and time series line plot of SOI data
# ------------------------------------------------------------------------------
# Example:      -
# ------------------------------------------------------------------------------
# Author:       Dedy Dwi Prastyo, Elisabeth Bommes, Caroline Kleist
# ------------------------------------------------------------------------------
#

soi = scan("http://www.stat.pitt.edu/stoffer/tsa2/data/soi.dat")

# Time domain
par(mfrow=c(1,1))
plot(soi, type="l", col ="blue3")

par(mfrow=c(2,1))
acf(soi, xlab="Lag Time", lwd=4, main="")
pacf(soi, xlab="Lag Time", ylab="PACF", lwd=4, main="")

# Frequency domain
par(mfrow=c(1,1))
soi.per = spec.pgram(soi, taper = 0, log = "no", col = "red3", lwd = 4, main = "", sub="",
                     ylab = "Spectrum", xlab = "Frequency")
abline(v = 1/12, lty = "dotted")
abline(v = 1/48, lty = "dotted")
