\name{print.summary.whatif}
\alias{print.summary.whatif}
\title{Print "summary.whatif" Object}
\description{
Prints the information generated from the \code{whatif} output object 
by a call to \code{summary}, which is stored in an object of class 
"summary.whatif".  
}
\usage{
\method{print}{summary.whatif}(x, ...)
}
\arguments{
  \item{x}{An object of class "summary.whatif", the output of
    the function \code{summary.whatif}.}
  \item{...}{Further arguments passed to and from other methods.}
}
\value{
A printout to the screen of the \code{whatif} information summarized 
in the \code{summary.whatif} output object.
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
  \code{\link{print.whatif}}
}
\examples{
##  Create example data sets and counterfactuals
my.cfact <- matrix(rnorm(3*5), ncol = 5)
my.data <- matrix(rnorm(100*5), ncol = 5)

##  Evaluate counterfactuals
my.result <- whatif(data = my.data, cfact = my.cfact, mc.cores = 1)

##  Print summary output object
my.result.sum <- summary(my.result)
print(my.result.sum)
}
\keyword{print}
