\name{peacef}
\docType{data}
\alias{peacef}
\title{Factual Replication Data from King and Zeng 2006b}
\description{
     This data set is one of two that together allow the
     replication of the analysis in section 2.4 of King and Zeng 2006b.   
     It contains \emph{factual} data from Doyle and Sambanis 
     2000 on 124 post-WWII civil wars.  It should be used in conjunction
     with the data set of counterfactuals derived from it, \code{peacecf}.
}
\usage{data(peacef)}
\format{A data frame with dimensions 124-by-11.  Columns are covariates and 
    rows are data points (or units).  The covariates are \code{decade}, 
    \code{wartype}, \code{logcost}, \code{wardur}, \code{factnum}, \code{factnumsq}, 
    \code{trnsfcap}, \code{untype4}, \code{treaty}, \code{develop}, and \code{exp}, 
    in that order.  
}
\source{King and Zeng 2006b}
\references{
     King, Gary and Langche Zeng.  2006.  "When Can History Be Our Guide?  The
     Pitfalls of Counterfactual Inference."  \emph{International Studies Quarterly}
     51 (March).

     Doyle, Michael W. and Nicholas Sambanis.  2000.  "International Peacebuilding:
     A Theoretical and Quantitative Analysis."  \emph{American Political Science 
     Review} 94, no.4: 779--801.
}
\keyword{datasets}
