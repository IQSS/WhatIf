test_that("REQUIRE TEST whatif with 1 counterfactual", {
    my.cfact <- matrix(rnorm(3*5), ncol = 5)
    my.data <- matrix(rnorm(100*5), ncol = 5)
    
    expect_error(whatif(data = my.data, cfact = matrix(my.cfact[1,], nrow = 1), 
                        mc.cores = 1), NA) 
})


test_that("REQUIRE TEST multitreaded", {
    my.cfact <- matrix(rnorm(3*5), ncol = 5)
    my.data <- matrix(rnorm(100*5), ncol = 5)
    
    with_mock(
        `WhatIf::whatif` = function(...) print("3 cores"),
        expect_error(whatif(data = my.data, cfact = my.cfact, 
                        mc.cores = 3), NA) 
    )
})
