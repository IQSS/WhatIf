\name{plot.whatif}
\alias{plot.whatif}
\title{Plot Cumulative Frequencies of Distances for "whatif" Objects}
\description{
  Generates a cumulative frequency plot of distances from an
  object of class "whatif".  The cumulative frequencies (the fraction
  of rows in the observed data set with either Gower or (squared)
  Euclidian distances to
  the counterfactuals  less than the given value on the horizontal axis) 
  appear on the vertical axis.  
}
\usage{
\method{plot}{whatif}(x, type = "f", numcf = NULL, eps = FALSE, ...)
}
\arguments{
  \item{x}{An object of class "whatif", the output of the
    function \code{whatif}.}
  \item{type}{A character string; the type of plot of the cumulative frequencies 
    of the distances to be produced.  Possible types are:  \code{"f"} 
    for cumulative frequencies only; \code{"l"} for LOWESS smoothing of
    cumulative frequencies only; and \code{"b"} for both cumulative
    frequencies and LOWESS smoothing.  The default is \code{"f"}.}
  \item{numcf}{A numeric vector; the specific counterfactuals to be plotted.
    Each element represents a counterfactual, specifically its row number
    from the matrix or data frame of counterfactuals.  By default, all
    counterfactuals are plotted.  Default is \code{NULL}.}
  \item{eps}{A Boolean; should an encapsulated postscript file be
    generated?  Setting the argument equal to \code{TRUE} generates an
    \code{.eps} file, which is saved to your working directory with
    file name of form '\code{graph_'type'_'numcf'.eps}', where
    \code{'type'} and \code{'numcf'} are the values of the respective
    arguments.  Specifically, \code{'numcf'} takes the value of 
    the first element of the argument \code{numcf} unless all counterfactuals
    were plotted, in which case \code{all} appears in the place of
    \code{'numcf'}. Default is \code{FALSE},
    which instead prints the graph to the screen.}
  \item{...}{Further arguments passed to and from other methods.}
}
\details{
  LOWESS scatterplot smoothing using the function \code{lowess} is plotted 
  in blue. Counterfactuals in the convex hull are plotted with a solid line 
  and counterfactuals outside of the convex hull with a dashed line.
}
\value{
  A graph printed to the screen or an encapsulated postscript file saved
  to your working directory.  In the latter case, the file name has form
  '\code{graph_'type'_'numcf'.eps}', where \code{'type'} and \code{'numcf'}
  are the values of the respective arguments.  
}
\references{King, Gary and Langche Zeng.  2006.  "The Dangers of
  Extreme Counterfactuals."  \emph{Political Analysis} 14 (2).
  Available from \url{http://GKing.Harvard.Edu}.

  King, Gary and Langche Zeng.  2007.  "When Can History Be Our Guide?
  The Pitfalls of Counterfactual Inference."  \emph{International Studies Quarterly}
  51 (March).  Available from \url{http://gking.harvard.edu}.}
\author{Stoll, Heather \email{hstoll@polsci.ucsb.edu}, King, Gary
  \email{king@harvard.edu} and Zeng, Langche \email{zeng@ucsd.edu}}
\seealso{
  \code{\link{whatif}},
  \code{\link{summary.whatif}},
  \code{\link{print.whatif}},
  \code{\link{print.summary.whatif}}
}
\examples{
##  Create example data sets and counterfactuals
my.cfact <- matrix(rnorm(3*5), ncol = 5)
my.data <- matrix(rnorm(100*5), ncol = 5)

##  Evaluate counterfactuals
my.result <- whatif(data = my.data, cfact = my.cfact)

##  Plot cumulative frequencies for the first two counterfactuals (rows
##  1 and 2) in my.cfact
plot(my.result, type = "b", numcf = c(1, 2))
}
\keyword{hplot}
