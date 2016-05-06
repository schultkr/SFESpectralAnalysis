# ------------------------------------------------------------------------------
# Book:         SFE
# ------------------------------------------------------------------------------
# Quantlet:     SFESpec1
# ------------------------------------------------------------------------------
# Description:  SFESpec1 computes the theoretical spectral density for MA(1), 
#               MA(2), AR(1), AR(2), ARMA(1,1), SAR(1), SAM(1)
# ------------------------------------------------------------------------------
# Usage:        -
# ------------------------------------------------------------------------------
# Inputs:       none
# ------------------------------------------------------------------------------
# Output:       Spectral density graphs 
# ------------------------------------------------------------------------------
# Example:      -
# ------------------------------------------------------------------------------
# Author:       Dedy Dwi Prastyo, Elisabeth Bommes, Caroline Kleist
# ------------------------------------------------------------------------------
#

library(TSA)
win.graph(width=4.875,height=5,pointsize=12)
par(mfrow=c(1,2))

# MA(1)
theta1 = 0.9 # Reset theta for other MA(1) plots
ARMAspec(model = list(ma =   theta1), col="magenta", lwd=3)
ARMAspec(model = list(ma = - theta1), col="blue",    lwd=3)

# MA(2)
theta1 = 0.9; theta2 = -0.6  # Reset theta for other MA(2) plots
ARMAspec(model = list(ma =  c(theta1,theta2)), col="magenta", lwd=3)
ARMAspec(model = list(ma = -c(theta1,theta2)), col="blue",    lwd=3)

# AR(1)
phi1 = 0.9 # Reset theta for other AR(1) plots
ARMAspec(model=list(ar =  phi1), col="magenta", lwd=3)
ARMAspec(model=list(ar = -phi1), col="blue",    lwd=3)

# AR(2)
phi1 = 1.5; phi2 = -0.75  # Reset theta for other AR(2) plots
ARMAspec(model=list(ar = c(phi1, phi2)), col="magenta", lwd=3)
phi1 = 0.1; phi2 = 0.4  # Reset theta for other AR(2) plots
ARMAspec(model=list(ar= c(phi1, phi2)),  col="blue",    lwd=3)

# ARMA(1,1)
phi1 = 0.5; theta1 = 0.8  # Reset theta for other ARMA(1,1) plots
ARMAspec(model=list(ar =  phi1, ma =  theta1), col="magenta", lwd=3)
ARMAspec(model=list(ar = -phi1, ma = -theta1), col="blue",    lwd=3)

# SAR(1), SAM(1)
phi1   = 0.5;   PHI1 = 0.9 # Reset theta for Seasonal AR
theta1 = 0.4; THETA1 = 0.9  # Reset theta for seasonal MA

ARMAspec(model=list(ar = phi1, seasonal = list(sar = PHI1, period=12)), col="magenta",     lwd=3)
ARMAspec(model=list(ma = -theta1, seasonal = list(sma= -THETA1, period = 12)), col="blue", lwd=3)