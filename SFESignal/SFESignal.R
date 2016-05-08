# create simulated time series processes
t    = 1:500
S    = 2 * cos(2 * pi * t / 50 + .6 * pi)
εt1 = rnorm(500, 0, 1)
εt2 = 5 * εt1

# plot the simulated time series processes
par(mfrow = c(3, 1), mex = 1, lheight = 1.5)
plot.ts(S, xlab = "", col = "blue3", ylab = bquote(S[t]))
plot.ts(S + εt1, xlab = "", col = "blue3", ylab = bquote(S[t] +  epsilon[t1]))
plot.ts(S + εt2, xlab = "Time t", col = "blue3", ylab = bquote(S[t] +  epsilon[t2]))
