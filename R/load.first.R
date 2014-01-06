.onAttach <- function(...) {

    mylib <- dirname(system.file(package = "WhatIf"))
    ver <- packageDescription("WhatIf", lib = mylib)$Version
    builddate <- packageDescription("WhatIf", lib = mylib)$Date
    cat("#######################################################\n")
    cat(paste("## \n##  WhatIf (Version ", ver, ", built ", builddate, ")\n", sep = "")) 
    cat("##  Complete documentation available from http://gking.harvard.edu/whatif \n")
    cat("## \n#######################################################\n")
}
