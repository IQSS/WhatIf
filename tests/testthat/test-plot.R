## File for testing plot.whatif()

test_that("ERROR TEST: check that bad inputs generate errors",{
    data("peacecf")
    data("peacef")
    x <- whatif(cfact = peacecf, data = peacef, mc.cores = 1)
    expect_error(plot(x, numcf = "a"),
                 regexp = "argument 'numcf' must be a numeric vector")
    expect_error(plot(x, type = "a"),
                 regexp = "argument 'type' must be one of the characters ''l'', ''f'', or ''b''")
})
