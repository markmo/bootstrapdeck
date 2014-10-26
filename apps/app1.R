require(rCharts)

housing <- data.frame(price=sample(50000:100000, 500))

shinyServer(function(input, output) {

  output$myChart <- renderChart({
    
    df <- run_bootstrap(input$sample_size)
    
    # draw the dot plot
    p1 <- rPlot(x="bin(mean_price,10)", y="count(mean_price)", data=df, type="bar")
    p1$set(dom="myChart", title="Histogram of sample mean")
    p1
  })

})

run_bootstrap <- function(sample_size) {
  n <- 50
  sample_means <- rep(NA, n)
  sample_medians <- rep(NA, n)
  
  for (i in 1:n) {
    s <- sample(housing$price, sample_size, replace=T)
    sample_means[i] <- mean(s)
    sample_medians[i] <- median(s)
  }
  data.frame(mean_price=sample_means, median_price=sample_medians)
}
