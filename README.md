## Introduction to Causal Inference

### Authors:
- [Mathew Kiang](https://mathewkiang.com) ([GitHub](https://github.com/mkiang))
- Zhe Zhang ([GitHub](https://github.com/writezhe))
- [Monica Alexander](http://monicaalexander.com) ([GitHub](https://github.com/MJAlexander))

### Game plan:

Alright guys, here's the game plan. 

- We are going to use [xaringan](https://github.com/yihui/xaringan) which is based on [remarkjs](https://remarkjs.com/#1) so there's a tiny learning curve, but not much. 
- We will assign sections. Each section should be its own branch. Once assigned, you're only expected to produce a very rough draft. The rest can be filled out by the others. Just get a structure down.
- Submit pull request when you're ready for the other two people to review slides. Discuss changes, etc on PR and merge when ready.
- Github pages are active so you can look at a live version on the master: For example: [`https://mkiang.github.io/intro-ci-shortcourse/slides/part-01-intro/`](https://mkiang.github.io/intro-ci-shortcourse/slides/part-01-intro/#1)

### Class structure:
- Assume we have 8 sections of approximately 50 minutes. (10 minute buffer for questions, technical issues, etc.)
  1. Introduction to CI
    - Introduce ourselves
    - Why do we care about causal inference? 
      - Some examples of poor inference
    - What is causal inference?
      - Rubin example of "the pill that does nothing"
    - Rubin Causal Model
      - Many different frameworks for causl inference, but we'll be using Rubin causal model. Introduce basic RCM.
      - God's data vs our data and the fundamental problem of causal inference
      - "Causal inference is just a missing data problem."
  2. Evaluating causality in this framework
    - Randomized control trials
      - Use the God's data view to show if we randomized them and then assigned, confounding disappears.
    - DAGS
  3. Biases: Confounding / Selection
  4. Intrumental variables
  5. Natural experiments
  6. Regression discontinuity
  7. Matching designs
  8. Study design

### TODO
- [x] Add Zhe, Monica, and Adolfo to github
- [ ] Need to finalize title of the class
- [ ] Sort out if we can even go over all these topics in 8 hours.
- [ ] Zhe link to personal page?
