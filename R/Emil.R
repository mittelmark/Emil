#' \name{Emil}
#' \alias{Emil-class}
#' \alias{Emil}
#' \title{Emil object prototype.}
#' \usage{`Emil$new()`}
#' \description{
#' This prototype is used to create objects for a minimal OO system.
#' }
#' \value{Object of class \code{Emil} which can be extended with functions and properties using \emph{prototype based programming}.}
#' 
#' \details{
#'      \code{obj = Emil$new()} create new objects.
#'      
#'      These objects can be then extended with new methods step by step with the syntax
#'      \code{obj$func = function (self,args) { code }}. The argument self is,
#'            like in Python the object itself.
#' }
#' \examples{
#' obj=Emil$new()
#' obj$test <- function (self,x) { self$x=x }
#' obj$getX <- function (self) { return(self$x) }
#' obj$test(5)
#' obj$getX()
#' # inheritance
#' obj2=obj$new()
#' ls(obj2)
#' obj2$test(2)
#' obj2$x
#' obj$x
#' }

Emil <- new.env()

Emil$new <- function (self,...) {
    
    t=new.env()
    # new addition
    dots <- list(...)
    names <- names(dots)
    for (nm in names) {
        t[[nm]] = dots[[nm]]
    }
    # end of new addition
    for (o in ls(self)) {
        t[[o]]=self[[o]]
    }
    class(t)="Emil"
    return(t)
    #return(as.environment(self))
}
Emil$.new = Emil$new # in case we overwrite new

class(Emil)="Emil"

"$<-.Emil" <- function(self,s,value) {
  if (is.function(value))
    environment(value) <- self
  self[[as.character(substitute(s))]] <- value
  return(self)
}


"$.Emil" <- function(x, name) {
  inherits <- substr(name, 1, 2) != ".."

  res <- get(name, envir = x, inherits = inherits)
  if (!is.function(res))
    return(res)

  structure(
    function(...) res(x, ...),
    method = res
  )
}
