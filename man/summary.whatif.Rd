\name{summary.whatif}
\alias{summary.whatif}
\title{Summary of "whatif" Object}
\description{
Summarizes the information produced by the function \code{whatif}. 
The summary generated is returned as an output object and also printed 
to the screen.
}
\usage{
\method{summary}{whatif}(object, ...)
}
\arguments{
  \item{object}{An object of class "whatif", the output of 
    the function \code{whatif}.}
  \item{...}{Further arguments passed to and from other methods.}
}
\value{
An object of class "summary.whatif", a list containing the following five
elements:
  \item{call}{The original call to \code{whatif}.}
  \item{m}{A scalar.  The total number of counterfactuals evaluated.}
  \item{m.inhull}{A scalar.  The number of counterfactuals evaluated
  that are in the convex hull of the observed covariate data.}
  \item{mean.near}{A scalar.  The average percentage of data nearby
  each counterfactual, where the average is taken over all
  counterfactuals.}
  \item{sum.df}{A data frame with three columns and \eqn{m} rows, where \eqn{m} is
  the number of counterfactuals.  The first column, \code{cfact}, indexes
  the counterfactuals.  The second column, \code{in.hull}, contains the
  results of the convex hull test.  The third column, \code{per.near},
  contains the percentage of data points nearby each counterfactual.}
This object is printed to the screen.
}
\references{King, Gary and Langche Zeng.  2006.  "The Dangers of 
  Extreme Counterfactuals."  \emph{Political Analysis} 14 (2).
  Available from \url{http://gking.harvard.edu}.

  King, Gary and Langche Zeng.  2007.  "When Can History Be Our Guide?
  The Pitfalls of Counterfactual Inference."  \emph{International Studies Quarterly}
  51 (March).  Available from \url{http://gking.harvard.edu}.}
\author{Stoll, Heather \email{hstoll@polsci.ucsb.edu}, King, Gary
  \email{king@harvard.edu} and Zeng, Langche \email{zeng@ucsd.edu}}
\seealso{
  \code{\link{whatif}},
  \code{\link{plot.whatif}},
  \code{\link{print.whatif}},
  \code{\link{print.summary.whatif}}
}
\examples{
##  Create example data sets and counterfactuals
my.cfact <- matrix(rnorm(3*5), ncol = 5)
my.data <- matrix(rnorm(100*5), ncol = 5)

##  Evaluate counterfactuals
my.result <- whatif(data = my.data, cfact = my.cfact, mc.cores = 1)

##  Print summary
summary(my.result)
}
\keyword{print}
