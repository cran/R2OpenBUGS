\name{validateInstallOpenBUGS}
\alias{validateInstallOpenBUGS}
\title{Compare OpenBUGS/R2OpenBUGS execution to results supplied with OpenBUGS} 

\description{A selected subset of the examples from the OpenBUGS manual is
executed and compared to results supplied with the package to validate 
installation.}

\usage{
validateInstallOpenBUGS(
    OpenBUGS.pgm=NULL,
    useWINE=FALSE, WINE=NULL,
    newWINE=TRUE, WINEPATH=NULL
    )
}

\arguments{
  \item{OpenBUGS.pgm}{See \code{\link{bugs}}.}
  \item{useWINE}{logical; attempt to use the Wine emulator to run
    \pkg{OpenBUGS}. Default is \code{FALSE}. If WINE is used, the arguments \code{OpenBUGS.pgm} and \code{working.directory} must be given in form of Linux paths
rather than Windows paths (if not \code{NULL}).}
  \item{WINE}{Character, path to \file{wine} binary file, it is
    tried hard (by a guess and the utilities \code{which} and \code{locate}) 
    to get the information automatically if not given.}
  \item{newWINE}{Use new versions of Wine that have \file{winepath}
    utility}
  \item{WINEPATH}{Character, path to \file{winepath} binary file, it is
    tried hard (by a guess and the utilities \code{which} and \code{locate}) 
    to get the information automatically if not given.}
}

\details{
  Operation system support:
  \itemize{
    \item \pkg{MS Windows} Yes
    \item \pkg{Linux, intel processors} Yes, but GUI display and graphics not available.
    \item \pkg{Mac OS X} and \pkg{Unix} Wine emulation via \code{useWINE=TRUE}
  }

  If \code{useWINE=TRUE} is used, all paths (such as
  \code{working.directory} and \code{model.file}, must be given in
  native (Unix) style, but \code{OpenBUGS.pgm} can be given in
  Windows path style (e.g. \dQuote{c:/Program Files/OpenBUGS/}) or
  native (Unix) style \cr
  (e.g. \dQuote{/path/to/wine/folder/dosdevices/c:/Program
  Files/OpenBUGS/OpenBUGS321/OpenBUGS.exe}).  

}

\value{
No data returned.  Prints match/no match result to console for each example.
}

\references{
    Gelman, A., Carlin, J.B., Stern, H.S., Rubin, D.B. (2003):
    \emph{Bayesian Data Analysis}, 2nd edition, CRC Press.

     Sturtz, S., Ligges, U., Gelman, A. (2005):
     R2WinBUGS: A Package for Running WinBUGS from R.
     \emph{Journal of Statistical Software} 12(3), 1-16.
}

\author{Neal Thomas based on BRugs examples created by Chris Jackaon.}

\seealso{\code{\link{bugs}}}

\keyword{interface}
\keyword{models}
