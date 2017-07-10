#' Summary Whatif
#' 
#' Summarizes the information produced by the function \code{whatif}. 
#' The summary generated is returned as an output object and also printed 
#' to the screen.
#' 
#' @param {object}{An object of class "whatif", the output of 
#' the function \code{whatif}.}
#' 
#' @return 
#' An object of class "summary.whatif", a list containing the following five
#' elements:
#'  \item{call}{The original call to \code{whatif}.}
#'  \item{m}{A scalar.  The total number of counterfactuals evaluated.}
#'  \item{m.inhull}{A scalar.  The number of counterfactuals evaluated
#'  that are in the convex hull of the observed covariate data.}
#'  \item{mean.near}{A scalar.  The average percentage of data nearby
#'    each counterfactual, where the average is taken over all
#'    counterfactuals.}
#'  \item{sum.df}{A data frame with three columns and \eqn{m} rows, where \eqn{m} is
#'    the number of counterfactuals.  The first column, \code{cfact}, indexes
#'    the counterfactuals.  The second column, \code{in.hull}, contains the
#'    results of the convex hull test.  The third column, \code{per.near},
#'    contains the percentage of data points nearby each counterfactual.}
#'    This object is printed to the screen.
#' 
#' @examples 
#' Create example data sets and counterfactuals
#' 
#' my.cfact <- matrix(rnorm(3*5), ncol = 5)
#' my.data <- matrix(rnorm(100*5), ncol = 5)
#'
#' Evaluate counterfactuals
#'  
#' my.result <- whatif(data = my.data, cfact = my.cfact, mc.cores = 1)
#'
#' Print summary
#' summary(my.result)
#' 
#' @export
summary.whatif <- function (object, ...)  {

 #Calculate number of counterfactuals
 m <- length(object$in.hull)
 #Calculate number of counterfactuals in convex hull
 m.inhull <- sum(object$in.hull)
 #Calculate average (over all counterfactuals) percent data `nearby'
 mean.near <- mean(object$sum.stat)
 #Create data frame combining results of convex hull test with percent data `nearby'
 sum.df <- data.frame(cfact = seq(1, m, by = 1), in.hull = object$in.hull, 
   per.near = object$sum.stat)

 out <- list(call = object$call, m = m, m.inhull = m.inhull, mean.near = 
   mean.near, sum.df = sum.df)
 class(out) <- "summary.whatif"
 return(out)

}
