# REQUIRE TEST: Zelig integration ----------------------------------------------
test_that('REQUIRE TEST: Zelig integration', {
    z.out <- zelig(Petal.Width ~ Petal.Length, data = iris, 
                        model = "ls")
    s.out <- setx(z.out, Petal.Length = 1:10)
    with_zelig <- whatif(data = s.out)
    
    without_zelig <- whatif(data = data.frame(Petal.Length = iris$Petal.Length), 
                            cfact = data.frame(Petal.Length = 1:10))
    
    expect_equivalent(with_zelig$sum.stat, without_zelig$sum.stat)
})
