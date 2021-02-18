
library(shiny)
ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      width = 3,
      h2("My Static Website"),
      h3("Internal link example"),
      a(h4("Birds"),
        href = "#birds"),
      hr(),
      h3("External link example"),
      a(h4("Wikipedia"),
        href = "https://en.wikipedia.org/wiki/Main_Page",
        target = "blank")
    ),
    
    mainPanel(
      width = 9,
      h2("Link to a saved sample.html"),
      p("The url is https://mariam.github.io/samples/sample.html"),
      a(h3("Lovely Birds"),
        href = "https://mariam.github.io/samples/sample.html",
        target = "blank"),
      hr(),
      h2("Text and image example", id = "birds"),
      fluidRow(
        column(
          7,
          includeMarkdown("markdown/birds.Rmd")
        ),
        column(
          5,
          img(src = "images/birds.png", width = "100%")
        )
      ),
    )
  )
)

# The serve.R file has an empty function as we do not have any interactive features in ui.R
server <- function(input, output) {
  # empty
}
shinyApp(ui=ui, server=server) # to run the app in RStudio and open in browser


## To create the static website on github page


