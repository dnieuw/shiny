% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/input-checkboxgroup.R
\name{checkboxGroupInput}
\alias{checkboxGroupInput}
\title{Checkbox Group Input Control}
\usage{
checkboxGroupInput(inputId, label, choices, selected = NULL, inline = FALSE,
  width = NULL)
}
\arguments{
\item{inputId}{The \code{input} slot that will be used to access the value.}

\item{label}{Display label for the control, or \code{NULL} for no label.}

\item{choices}{List of values to show checkboxes for. If elements of the list
are named then that name rather than the value is displayed to the user.}

\item{selected}{The values that should be initially selected, if any.}

\item{inline}{If \code{TRUE}, render the choices inline (i.e. horizontally)}

\item{width}{The width of the input, e.g. \code{'400px'}, or \code{'100\%'};
see \code{\link{validateCssUnit}}.}
}
\value{
A list of HTML elements that can be added to a UI definition.
}
\description{
Create a group of checkboxes that can be used to toggle multiple choices
independently. The server will receive the input as a character vector of the
selected values.
}
\examples{
## Only run examples in interactive R sessions
if (interactive()) {

ui <- fluidPage(
  checkboxGroupInput("variable", "Variables to show:",
                     c("Cylinders" = "cyl",
                       "Transmission" = "am",
                       "Gears" = "gear")),
  tableOutput("data")
)

server <- function(input, output) {
  output$data <- renderTable({
    mtcars[, c("mpg", input$variable), drop = FALSE]
  }, rownames = TRUE)
}

shinyApp(ui, server)
}
}
\seealso{
\code{\link{checkboxInput}}, \code{\link{updateCheckboxGroupInput}}

Other input.elements: \code{\link{actionButton}},
  \code{\link{checkboxInput}}, \code{\link{dateInput}},
  \code{\link{dateRangeInput}}, \code{\link{fileInput}},
  \code{\link{numericInput}}, \code{\link{passwordInput}},
  \code{\link{radioButtons}}, \code{\link{selectInput}},
  \code{\link{sliderInput}}, \code{\link{submitButton}},
  \code{\link{textAreaInput}}, \code{\link{textInput}}
}

