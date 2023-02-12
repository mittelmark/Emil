\name{Emil} 
\alias{Emil-class} 
\alias{Emil} 
\title{Emil object prototype.} 
\usage{`Emil$new()`} 
\description{ 
This prototype is used to create objects for a minimal OO system. 
} 
\section{Methods}{ 
\describe{ 
   \item{\code{Emil$new(...)}}{Creates new objects of class Emil arguments are stored as keys of the object, a function with name init is called automatically if given as argument} 
} 
} 
\value{Object of class \code{Emil} which can be extended with functions and properties using \emph{prototype based programming}.} 
 
\details{ 
     \code{obj = Emil$new()} create new objects. 
      
     These objects can be then extended with new methods step by step with the syntax 
     \code{obj$func = function (self,args) { code }}. The argument self is, 
           like in Python the object itself. 
    
    For more information look at the tutorial vignette by calling `vignette('emil-tutorial')`. 
} 
\examples{ 
obj=Emil$new() 
obj$test <- function (self,x) { self$x=x } 
obj$getX <- function (self) { return(self$x) } 
obj$test(5) 
obj$getX() 
# inheritance 
obj2=obj$new() 
ls(obj2) 
obj2$test(2) 
obj2$x 
obj$x 
} 
