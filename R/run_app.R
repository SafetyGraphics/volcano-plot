#' Run the Shiny Application
#'
#' @param ... arguments to pass to golem_opts
#' @inheritParams shiny::shinyApp
#'
#' @export
#' @import shiny
#' 



run_app <- function(onStart = NULL, options = list(), enableBookmarking = NULL) {
  print("running app")
  app = shinyApp(
    ui = app_ui,
    server = app_server,
    onStart = onStart,
    options = options,
    enableBookmarking = enableBookmarking
  )
  #runApp(app, launch.browser = TRUE)
  runApp(app, launch.browser = FALSE)
}


#runApp(app=shinyApp(ui=app_ui, server=app_server))


######################## testing ###########################
#library(shiny) # version: 1.4.0
#library(shinyjs) # version: 1.1
#library(data.table) # version: 1.12.8
#library(DT) # version: 0.12
#library(ggplot2) # version: 3.2.1
#library(plotly) # version: 4.9.1
#library(scales) # version: 1.1.0
#library(shinycssloaders) # version: 0.3
#library(conflicted) # version: 1.0.4
#library(dplyr) # version: 0.8.3
#library(tidyr) # version: 1.0.2
#library(survival) # version: 3.1-8
#library(survminer) # version: 0.4.6
#library(fmsb) # version: 0.7.0
#library(shinyWidgets)
#library(cowplot)
#setwd("./R")
#source("app_server.R")
#source("app_ui.R")
#source("GetStatistics.R")
#source("util.R")
#source("volcano_plot.R")
#runApp(app=shinyApp(ui=app_ui, server=app_server))
#run_app()
