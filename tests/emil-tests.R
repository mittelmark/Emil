library(Emil)

e = Emil$new(x=1)
e$add <- function (self,x=1) {
    self$x=self$x+1
}

e$add()
if (e$x != 2) {
    stop("Error: Something strange happened!!")
}
