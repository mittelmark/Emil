\name{Accumulator-class} 
\alias{Accumulator} 
\alias{Accumulator-class} 
\title{Example Accumulator class for Emil.} 
\description{ 
An example class for the Emil OOP system. 
} 
\section{Fields}{ 
  \describe{ 
     \item{\code{sum}}{The current amount of the accumlator values} 
  } 
} 
\section{Methods}{ 
\itemize{ 
   \item \code{add(x=1)}: Add the value of x to the current accumulated value in sum 
}} 
\examples{ 
 x = Accumulator$new() 
 x$add(5) 
 x$sum 
} 
 
