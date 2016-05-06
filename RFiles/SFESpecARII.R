# ------------------------------------------------------------------------------
# Book:         SFE
# ------------------------------------------------------------------------------
# Quantlet:     SFESpecARII
# ------------------------------------------------------------------------------
# Description:  SFESpecAR computes the spectrum (frequency domain representation)
#               of an AR(1) process with positive or negative coefficients
# ------------------------------------------------------------------------------
# Usage:        -
# ------------------------------------------------------------------------------
# Inputs:       none
# ------------------------------------------------------------------------------
# Output:       Spectrum of AR(1) processes
# ------------------------------------------------------------------------------
# Example:      -
# ------------------------------------------------------------------------------
# Author:       Franziska Schulz, Elisabeth Bommes, Caroline Kleist
# ------------------------------------------------------------------------------
#

win.graph(width=7,height=3,pointsize=6)
par(mfrow=c(2,1), mar=c(4,4.5,1,3)+0.1, mgp=c(2.5,1,0))

Fr = 0:50/100
y<-arima.sim(n=250,model=list(ar=-0.9),rand.gen=rnorm)

plot(y,type="l",xlab="time",ylab="X",lwd=2,cex.lab=2,cex.axis=2)
spec.pgram(y,log="no",xlab="frequency",main="",lwd=2,cex.lab=1.5,cex.axis=1.5,sub="",ylab="Spectrum")
spec = 1/(1+0.9^2+2*0.9*cos(2*pi*Fr))
lines(Fr,spec,col=2,lwd=2)


Fr = 0:50/100
y<-arima.sim(n=250,model=list(ar=0.9),rand.gen=rnorm)

plot(y,type="l",xlab="time",ylab="X",lwd=2,cex.lab=2,cex.axis=2)
spec.pgram(y,log="no",xlab="frequency",main="",lwd=2,cex.lab=1.5,cex.axis=1.5,sub="",ylab="Spectrum")
spec = 1/(1+0.9^2-2*0.9*cos(2*pi*Fr))
lines(Fr,spec,col=2,lwd=2)