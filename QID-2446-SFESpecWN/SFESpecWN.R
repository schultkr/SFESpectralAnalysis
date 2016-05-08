par(mfrow = c(2, 1), mar = c(4, 4.5, 1, 3) + 0.1, mgp = c(2.5, 1, 0))

x = rnorm(250, 0, 0.6)

plot(x, type = "l", xlab = "time", ylab = expression(X[t]), lwd = 2, cex.lab = 2.1, cex.axis = 2)
abline(h = 0, lty = 3)
spec.pgram(x, log = "no", xlab = "frequency", main = "", lwd = 2,
           cex.lab = 2.1, cex.axis = 2, sub = "", ylab = "Spectrum")
abline(h = 0.6^2, col = 2, lwd = 2)