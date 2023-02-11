# Rpkg

A generic R package template.

Just use the green "Use this template" link on top to create your own R-package in Github.

To build, check and install this package you need only an installed R. If you create your repository you have to change the relevant parts entering, package name, author etc in the description file and the library call in the file tests/test-add.R. Then you can start a first check if the package is installable.


The commands are the following:

```
R CMD build .                   # creates a tar.gz file in the current folder
R CMD check pkgname_0.1.tar.gz  # replace pkgname with the name you entered in the DESCRIPTION file
```

If this is all ok, you can start entering your own code and update your documentation and tests. The template provides as well a simple R script which copies the documentation out of the R-files into the man-directory. If you do not like this approach of combining the documentation with the code in one file you can as well just skip this file and create directly your own Rd-files. The documentation out of the R files is extracted like this:

```
Rscript bin/rman.R R/add.R
```

This apporac is very similar to the approach of the documentation tools [roxygen2](https://cran.r-project.org/web/packages/roxygen2/index.html), but here you do not need the roxygen2 package, just this simple extraction script `bin/rman.R`. There is as well a Makefile file which provides the neccessary commands to build and install and does as well a check if the R file is newer than the Rd file and only then does the required update. If you use make you can then simple write:

```
make check VERSION=0.1
```

if your version number is 0.1.

If you do not use make just execute the required commands manually in the terminal.

```
Rscript bin/rman.R R/add.R
R CMD build .
R CMD check pkgname_version.tar.gz
R CMD INSTALL pkgname_version.tar.gz
```

In case of bugs and suggestions, use the [https://github.com/mittelmark/Rpkg/issues](issues) link on top.
