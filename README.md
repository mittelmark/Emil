# Emil

A minimal object oriented system in the spirits of Python's approach.

## Example

```
library(Emil)
obj = Emil$new()
obj$hello <- function (self) {
    return("Hello World!")
}
obj$setX <- function (self,x) {
    self$x=x
}
obj$getX <- function (self) {
    return(self$x)
}
obj2=obj$new(x=6)
```

## Description

R offers quite a few concepts of object oriented programming:
[S3](http://adv-r.had.co.nz/S3.html), [S4](http://adv-r.had.co.nz/S4.html),
[R6](https://adv-r.hadley.nz/r6.html),
[RC](http://adv-r.had.co.nz/OO-essentials.html#rc),
[R.oo](https://cran.r-project.org/web/packages/R.oo/index.html),
[proto](https://cran.r-project.org/web/packages/proto/index.html) and since
2022 as well [R7](https://rconsortium.github.io/OOP-WG/). If you prefere a
system which closely follows Python conventions. It is similar to that of the
proto package, but much smaller making it easier to embed into your current
package or application.

In contrast to the non-standard packages listened above, R6, R7, R.oo, proto,
it is just a small single file implementation, to use this approach in your
own code you can simply copy the file `R/Emil.R` into your folder of R files
in your package folder and you can use this type of programming. The license,
MIT, is very permissive and does not require that you change your license if
you embed this file into your package, application etc.

You can as well use the Emil package like any other package using the
`install.packages("Emil")` approach once the package is on CRAN. Or in case of local R-scripts just source the file into your code as usually.

## Installation

As package from Github:

```
install.packages("remotes")
remotes::install_github("mittelmark/Emil")
```

As package from CRAN:

```
install.packages("Emil")
```

Inside your own package:

- just copy the file `R/Emil.R` to your R source code folder

Inside your scripts, applications:

Just copy the code from `R/Emil.R` on top of your own code, or source the file
in your R script.

## License

MIT see the file [LICENSE](LICENSE)

## Bugs and Suggestions

In case of bugs and suggestions, use the [https://github.com/mittelmark/Rpkg/issues](issues) link on top.
