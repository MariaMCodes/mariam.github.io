
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
# See website: https://www.r-bloggers.com/2020/04/build-a-static-website-with-r-shiny/
# !Error! Couldn't get website to deploy


## To publish app using Shinyapps.io
library(rsconnect)

rsconnect::setAccountInfo(name='mariam04', token='7C09F935D34A5FF83DF8D355BF942428', secret='rAehTLprqAqbmNx2TH+Ng3mY7lcaGyQ2KyIN5vaU')
library(rsconnect)
rsconnect::deployApp('/Users/mariamempin/anaconda3/pkgs/r-formatr-1.6-r36h6115d3f_0/lib/R/library/formatR/shiny/app/mariam.github.io')

## Application successfully deployed to https://mariam04.shinyapps.io/mariamgithub/

