x <- seq(from= -10, to = 10) #, by = 0.1)

# clears history before recording
ani.record(reset = TRUE)  

# plot the lines
for (theta in seq(from=0, to=2*pi, by=.01*pi)) {
  y <- ((2*cos(theta) - sin(theta) ) / (cos(theta) - 2*sin(theta))) *x + 1
  z <- ((2*sin(theta) +cos(theta) ) / (sin(theta) + 2*cos(theta))) *x + 1
  plot(y~x, ylim=c(-100,100), type="l", 
       main=substitute(paste(val, pi), list(val = theta/pi)), 
       col="red", lwd=4)
  points(z~x, type="l", add=T, col="blue", lwd=4)
  
  points((2*x+1)~x, type="l", add=T, lwd=2)
  points((0.5*x+1)~x, type="l", add=T, lwd=2)
  
  par(xpd=T)
  legend(4.75,145, lwd=c(2.5,2.5),  col=c("red","blue"), box.lwd = 0,
         c(expression(2*x +1) , expression(textstyle(over(1 , 2)) *x +1) ),
  ) 
  par(xpd=F)
  ani.record()  # record the current frame
}


oopts = ani.options(interval = 0.25)

# Save plot as shiny app
#saveHTML(ani.replay(), img.name = "weird_plot")
