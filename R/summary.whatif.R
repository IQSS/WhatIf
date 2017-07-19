#' Summary Whatif
#' 
#' Summarizes the information produced by the function \code{whatif}. 
#' The summary generated is returned as an output object and also printed 
#' to the screen.
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

    # Calculate number of counterfactuals
    m <- length(object$in.hull)
    # Calculate number of counterfactuals in convex hull
    m.inhull <- sum(object$in.hull)
    # Calculate average (over all counterfactuals) percent data `nearby'
    mean.near <- mean(object$sum.stat)
    # Create data frame combining results of convex hull test with percent data `nearby'
    sum.df <- data.frame(cfact = seq(1, m, by = 1), in.hull = object$in.hull, 
                         per.near = object$sum.stat)
    
    out <- list(call = object$call, m = m, m.inhull = m.inhull, mean.near = 
                mean.near, sum.df = sum.df)
    class(out) <- "summary.whatif"
    return(out)

}
