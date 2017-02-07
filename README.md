## Introduction to Causal Inference

### Authors:
- [Mathew Kiang](https://mathewkiang.com) ([GitHub](https://github.com/mkiang))
- [Zhe Zhang](https://sites.google.com/view/zhezhang) ([GitHub](https://github.com/writezhe))
- [Monica Alexander](http://monicaalexander.com) ([GitHub](https://github.com/MJAlexander))

### Requirements (R packages):
- `xaringan`
- `shiny`
- `randomNames`

### Game plan:

Alright guys, here's the game plan. 

- We are going to use [xaringan](https://github.com/yihui/xaringan) which is based on [remarkjs](https://remarkjs.com/#1) so there's a tiny learning curve, but not much. 
    - Note: The wiki pages for each of these is **much** more useful than the slideshow. Use the wiki page. You can also just `view source` on any remarkjs website and you'll be able to see the unrendered markdown.
- We will assign sections. Each section should be its own branch. Once assigned, you're only expected to produce a very rough draft. The rest can be filled out by the others. Just get a structure down.
- Submit pull request when you're ready for the other two people to review slides. Discuss changes, etc on PR and merge when ready.
- Github pages are active so you can look at a live version on the master: For example: [`https://mkiang.github.io/intro-ci-shortcourse/slides/part-01-intro/`](https://mkiang.github.io/intro-ci-shortcourse/slides/part-01-intro/#1)

- Zhe is working on the assumption that the students are Master's in Data Science, similar to DSSG folk.

### Class structure:
- Assume we have 8 sections of approximately 50 minutes. (10 minute buffer for questions, technical issues, etc.)
    1. Introduction to CI (MK)
        - Introduce ourselves
            - Examples of the causal work we do (our work + related papers in our fields?)
        - Why do we care about causal inference?
            - Refer to perception that simply big data and machine learning can solve many problems[End of Theory Wired Article](https://www.wired.com/2008/06/pb-theory/)
                - this perception is wrong because data varies widely in importance and usefulness
                - sometimes we want to make changes to the system (business/government); can't do this without a causal (and theory-based?) estimate since data doesn't exist describing what the result of the change would be
            - our observed data & ML have several ways it could be biased
            - theory can have mixed directions (e.g. raising min wage) (optional)
            - Some examples of poor inference
                - causal inference from observations (e.g. job training program)
            - Some examples of good inference (seems like it would've be hard a priori)
                - estimating the impact of pollution on public health
            - Raj Chetty paper
                - an information systems/business example
        - What is causal inference?
            - Rubin example of "the pill that does nothing"
            - focus around the idea of a "treatment" (policy, management decision, website change)
        - Rubin Causal Model
            - Many different frameworks for causl inference, but we'll be using Rubin causal model. Introduce basic RCM.
            - God's data vs our data and the fundamental problem of causal inference
            - "Causal inference is just a missing data problem."
                - drill the concept of "counterfactual" repeatedly
                - goal of CI is to guess what would've happened; estimate the unobserved counterfactual
        - Examples of counterfactuals in various settings (some easy, some hard)
            - twins, change to Amazon business model, consumer demand shock, policy change, election politics, medicine, change to the transportation system
    2. Evaluating causality in this framework
        - Randomized control trials
            - Use the God's data view to show if we randomized them and then assigned, confounding disappears.
        - DAGS
            - Common use of regression for causal inference
            - Average treatment effect
        - How to perform causal inference when things are "OK" or all observed
            - walk through some basic regressions and controls?
        - how to perform regression inference 
            - (important to check fit, outliers, etc.)
            - similar to model selection. but not quite.
            - heteroskedasticity, non-linearity, variable transformation, high leverage points
            - there might still be useful inference points to discuss (like heterogeneity? or what it means to control for variables)
            - bad controls
    3. Biases: Confounding / Selection
        - omitted variable bias
        - selection bias
        - truncation/censored variables
        - discrete choice variables
    4. Intrumental variables
        - used to address various sources of bias, omitted variables
        - how to come up with an instrument?
        - ways to rule out a possible instrument?
        - ways to confirm an instrument --> none
    5. Natural experiments
        - panel data, time series data
        - differences-in-differences
        - fixed effects
    6. Regression discontinuity
        - example papers
    7. Matching designs
    8. Study design
        - A/B testing
        - opportunities that you might have at a company
        - why A/B testing can be fraught with issues
            - network effects
            - multiple testing
            - effect size estimate
            - more useful for small changes?

- Other potential things?
    1. Leftovers
        - simultaneous equation modeling
        - structural modeling
        - emphasizing that finding the right data is most of the battle
        - adding various diagnostics to the end of various sections?
    1. Observational vs Experimental Settings
        - a spectrum?

### TODO
See [Issues](https://github.com/mkiang/intro-ci-shortcourse/issues).