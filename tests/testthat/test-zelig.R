# REQUIRE TEST: Zelig integration ----------------------------------------------
test_that('REQUIRE TEST: Zelig integration', {
    # Without factors
    z.out <- zelig(Petal.Width ~ Petal.Length, data = iris, 
                        model = "ls")
    s.out <- setx(z.out, Petal.Length = 1:10)
    with_zelig <- whatif(data = s.out)
    
    without_zelig <- whatif(data = data.frame(Petal.Length = iris$Petal.Length), 
                            cfact = data.frame(Petal.Length = 1:10))
    
    expect_equivalent(with_zelig$sum.stat, without_zelig$sum.stat)
    
    # With factors
    f <- formula(Petal.Width ~ Petal.Length + Species)
    z.out.f <- zelig(f, data = iris, model = "ls")
    s.out.f <- setx(z.out.f, Petal.Length = 1:10, Species = 'virginica')
    with_zelig_f <- whatif(data = s.out.f)
    
    f_no_response <- formula(delete.response(terms(f)))
    cfact_factors <- data.frame(Petal.Length = 1:10, 
                                Species = factor('virginica', 
                                                 levels = levels(iris$Species)))
    iris_sub <- iris[, c('Petal.Length', 'Species')]
    without_zelig_f <- whatif(formula = f_no_response, data = iris_sub, 
                              cfact = cfact_factors)
    
    expect_equivalent(with_zelig_f$sum.stat, without_zelig_f$sum.stat)
})

# FAIL TEST zelig object without setx or cdata ---------------------------------
test_that('FAIL TEST zelig object without setx or cdata', {
    z.out.f <- zelig(Petal.Width ~ Petal.Length + Species, data = iris, 
                     model = "ls")
    expect_error(whatif(data = z.out.f), 'Unable to find fitted \\(setx\\) values\\.')
})
