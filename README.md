## WhatIf

**Release:**
[![CRAN Version](http://www.r-pkg.org/badges/version/WhatIf)](https://CRAN.R-project.org/package=WhatIf)
![CRAN Monthly Downloads](http://cranlogs.r-pkg.org/badges/last-month/WhatIf)
![CRAN Total Downloads](http://cranlogs.r-pkg.org/badges/grand-total/WhatIf)

**Development:**
[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![Travis-CI Build Status](https://travis-ci.org/IQSS/WhatIf.svg?branch=master)](https://travis-ci.org/IQSS/WhatIf)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/IQSS/WhatIf?branch=master&svg=true)](https://ci.appveyor.com/project/IQSS/WhatIf)

Inferences about counterfactuals are essential for prediction, answering what if questions, and estimating causal effects. However, when the counterfactuals posed are too far from the data at hand, conclusions drawn from well-specified statistical analyses become based largely on speculation hidden in convenient modeling assumptions that few would be willing to defend.

Unfortunately, standard statistical approaches assume the veracity of the model rather than revealing the degree of model-dependence, which makes this problem hard to detect. WhatIf offers easy-to-apply methods to evaluate counterfactuals that do not require sensitivity testing over specified classes of models. If an analysis fails the tests offered here, then we know that substantive inferences will be sensitive to at least some modeling choices that are not based on empirical evidence, no matter what method of inference one chooses to use.

WhatIf implements the methods for evaluating counterfactuals discussed in Gary King and Langche Zeng, 2006, "The Dangers of Extreme Counterfactuals," *Political Analysis* 14 (2); and Gary King and Langche Zeng, 2007, "When Can History Be Our Guide? The Pitfalls of Counterfactual Inference," *International Studies Quarterly* 51 (March).
