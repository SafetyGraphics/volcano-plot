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
}


