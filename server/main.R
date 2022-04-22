output$plot <- renderPlot({
  example <- msaenet::msaenet.sim.gaussian(
    n = 150, p = 500, rho = 0.5,
    coef = rep(1, 10), snr = 2, p.train = 0.7,
    seed = 1001
  )

  msaenet.fit <- msaenet::msaenet(
    example$x.tr, example$y.tr,
    alphas = seq(0.5, 0.95, 0.05),
    nsteps = 10L, tune.nsteps = "ebic",
    seed = 1005
  )

  plot(msaenet.fit, label = TRUE)
})

output$chart1 <- highcharter::renderHighchart({
  highcharter::highcharts_demo()
})

output$chart2 <- highcharter::renderHighchart({
  highcharter::hchart(iris, "scatter", highcharter::hcaes(Sepal.Length, Sepal.Width, group = Species))
})
