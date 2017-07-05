#' Print Summary Whatif 
#' 
#' Prints the information generated from the \code{whatif} output object 
#' by a call to \code{summary}, which is stored in an object of class 
#' "summary.whatif".  
#'
#' @examples 
#' Create example data sets and counterfactuals
#' 
#' my.cfact <- matrix(rnorm(3*5), ncol = 5)
#' my.data <- matrix(rnorm(100*5), ncol = 5)
#'
#' Evaluate counterfactuals
#' my.result <- whatif(data = my.data, cfact = my.cfact, mc.cores = 1)
#'
#' Print summary output object
#' 
#' my.result.sum <- summary(my.result)
#' print(my.result.sum)
#'
#' @export
print.summary.whatif <- function(x, ...)  {

    x$sum.df$in.hull <- as.character(x$sum.df$in.hull)
    names(x$sum.df) <- c("Counterfactual", "In Hull", "Percent Nearby")
    
    #PRINT ON SCREEN
    cat("\nSummary of Counterfactual Inference Analysis\n")
    cat("\n")
    cat("Call:  ", deparse(x$call), "\n", sep="")
    cat("\n")
    cat("Total Number of Counterfactuals:  ", x$m, "\n", sep = "")
    cat("\n")
    cat("Number of Counterfactuals in Convex Hull:  ", x$m.inhull, "\n", sep = "")
    cat("\n")
    cat("Average Percent 'Nearby':  ", x$mean.near, "\n", sep = "")
    cat("\n")
    cat("Counterfactual in Convex Hull, True or False, and",
      " Percentage of Observed\n", sep = "")
    cat("Data Points 'Nearby' Counterfactual:\n")
    prmatrix(x$sum.df, rowlab = rep("", x$m), quote = FALSE)
    cat("\n")

    return(invisible(x))
}
