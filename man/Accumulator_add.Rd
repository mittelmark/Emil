\name{Accumulator$add} 
\alias{Accumulator_add} 
\alias{Accumulator$add} 
\title{Add the value of x to the current accumulated value in sum.} 
\description{This is a method of the Accumulator class which adds the given value to the current object}   
\usage{`Accumulator$add(x=1)`} 
\arguments{ 
    \item{x}{the value to be added to the current internal accumulator value sum, default: 1} 
} 
\value{object itself invisibly}     
\examples{ 
 y = Accumulator$new() 
 y$add(5) 
 y$sum 
 y$add(3)$add(4) 
 y$sum 
} 
