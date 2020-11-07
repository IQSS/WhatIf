## Tests for whatif function

## Error tests

data("peacef")
data("peacecf")

test_that('FAIL Test: reject bad cfact inputs', {
    skip_on_cran()
    
    ## missing cfact test
    expect_error(whatif(data = peacef),
                 regexp = 'argument "cfact" is missing, with no default')
    ## bad data type
    expect_error(whatif(cfact = 1, data = peacef), 
                 regexp = "'cfact' must be either a string, a R data frame, or a R non-character matrix")
    
    ## no rows cfact
    expect_error(whatif(cfact = data.frame(), data = peacef), 
                 regexp = "no counterfactuals supplied: 'cfact' contains zero rows")
    
    ## missing data error
    expect_error(whatif(cfact = matrix(),data = peacef), 
                 regexp = "there are no cases in 'cfact' without missing values")
    
    ## different data and cfact dimensions
    expect_error(whatif(cfact = matrix(data = 1, ncol = 10), data = peacef),
                 regexp = "number of columns of 'cfact' and 'data' are not equal")
})

test_that('FAIL Test: reject bad data inputs', {
    skip_on_cran()
    
    ## data argument is missing
    expect_error(whatif(cfact = peacecf), 
                 regexp = 'argument "data" is missing, with no default')
    
    ## bad list test
    expect_error(whatif(cfact = peacecf, data = list(x = "", y = "")),
                 regexp = "the list supplied to 'data' is not a valid output object")
    
    ## empty data
    expect_error(whatif(cfact = peacecf, data = data.frame()),
                 regexp = "no observed covariate data supplied: 'data' contains zero rows")
    
    ## all rows have missing data
    missing.data <- peacecf
    missing.data$bad <- NA
    expect_error(whatif(cfact = peacecf, data = missing.data),
                 regexp = "there are no cases in 'data' without missing values")
    
})

test_that('Fail Test: reject bad formulas',{
    skip_on_cran()
    
    ## check formula label requirement
    expect_error(whatif(data = peacef, cfact = peacecf, formula = ~x),
                 regexp = "variables in 'formula' either unlabeled or not present in 'data'")
})

