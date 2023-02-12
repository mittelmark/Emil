# Demo Class for Emil with embedded documention

#' \docType{class}
#' \name{Accumulator-class}
#' \alias{Accumulator}
#' \alias{Accumulator-class}
#' \title{Example Accumulator class for Emil.}
#' \description{
#' An example class for the Emil OOP system.
#' }
#' \section{Fields}{
#'   \describe{
#'      \item{\code{sum}}{The current amount of the accumlator values}
#'   }
#' }
#' \section{Methods}{
#' \itemize{
#'    \item \code{add(x=1)}: Add the value of x to the current accumulated value in sum
#' }}
#' \examples{
#'  x = Accumulator$new()
#'  x$add(5)
#'  x$sum
#' }
#' 

Accumulator <- Emil$new(sum=0)


#' \name{Accumulator$add}
#' \alias{Accumulator_add}
#' \alias{Accumulator$add}
#' \title{Add the value of x to the current accumulated value in sum.}
#' \description{This is a method of the Accumulator class which adds the given value to the current object}  
#' \usage{`Accumulator$add(x=1)`}
#' \arguments{
#'     \item{x}{the value to be added to the current internal accumulator value sum, default: 1}
#' }
#' \value{object itself invisibly}    
#' \examples{
#'  y = Accumulator$new()
#'  y$add(5)
#'  y$sum
#'  y$add(3)$add(4)
#'  y$sum
#' }

Accumulator$add <- function (self,x=1) {
     self$sum <- self$sum + x 
     invisible(self) # for method chaining
}  
