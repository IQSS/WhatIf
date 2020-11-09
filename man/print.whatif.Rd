\name{print.whatif}
\alias{print.whatif}
\title{Print "whatif" Object}
\description{
Prints the information produced by the function \code{whatif},
an object of class "whatif", to the screen.  
}
\usage{
\method{print}{whatif}(x, print.dist = FALSE, print.freq = FALSE, ...)
}
\arguments{
  \item{x}{An object of class "whatif", the output of
    the function \code{whatif}.}
  \item{print.dist}{A Boolean; should the matrix of pairwise 
    distances between each counterfactual and data point be printed to
    the screen, if it was returned?  Default is \code{FALSE}.}
  \item{print.freq}{A Boolean; should the matrix of cumulative
    frequencies of distances for each counterfactual be printed
    to the screen?  Default is \code{FALSE}.}
  \item{...}{Further arguments passed to and from other methods.}
}
\value{
A printout to the screen of the information contained in the 
\code{whatif} output object.
}
\references{King, Gary and Langche Zeng.  2006.  "The Dangers of 
  Extreme Counterfactuals."  \emph{Political Analysis} 14 (2).
  Available from \url{https://gking.harvard.edu}.

  King, Gary and Langche Zeng.  2007.  "When Can History Be Our Guide?
  The Pitfalls of Counterfactual Inference."  \emph{International Studies Quarterly}
  51 (March).  Available from \url{https://gking.harvard.edu}.}
\author{Stoll, Heather \email{hstoll@polsci.ucsb.edu}, King, Gary
  \email{king@harvard.edu} and Zeng, Langche \email{zeng@ucsd.edu}}
\seealso{
  \code{\link{whatif}},
  \code{\link{plot.whatif}},
  \code{\link{summary.whatif}},
  \code{\link{print.summary.whatif}}
}
\examples{
##  Create example data sets and counterfactuals
my.cfact <- matrix(rnorm(3*5), ncol = 5)
my.data <- matrix(rnorm(100*5), ncol = 5)

##  Evaluate counterfactuals
my.result <- whatif(data = my.data, cfact = my.cfact, mc.cores = 1)

##  Print output object
print(my.result)
}
\keyword{print}
