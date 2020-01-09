# Introduction {#Section-Introduction}

```{r, include=FALSE}
library(knitr)
knitr::opts_chunk$set(cache = TRUE, 
                      warning = FALSE, 
                      message = FALSE, 
                      cache.lazy = FALSE)
```

Early 2019, I was fortunate and came across the book "Applied Predictive Modeling" by Max Kuhn and Kjell Johnson.[^n1] The focus of this book is the implementation and optimization of predictive modeling. However "Applied Predictive Modeling" is also a demonstration of the power of the R package `caret` written by Max Kuhn and others.

[^n1]:"Applied Predictive Modeling", Max Kuhn and Kjell Johnson, Springer Publishing, 2018, (http://appliedpredictivemodeling.com/)

>"The caret package, short for classification and regression training, focuses on simplifying model training and tuning across a wide variety of modeling techniques.[^n2]

[^n2]:Building Predictive Models in R Using the caret Package, Max Kuhn, J. Stat. Soft., Nov. 2008, 28, 5, www.jstatsoft.org/v28/i05/paper

The R package `caret` was written, in part, to overcome the syntactical differences between numerous R machine learning packages as it helps automate the process of model scouting and development.

I plan to discuss "Applied Predictive Modeling" and its tight connection to `caret` in this work since it outlines a methodical process for machine learning.

As one might suspect, many R machine learning packages having been developed by many different scientists have different variable input and output formats. In the spirit of harmonization and simplicity, `caret` standardizes the process of model development. As of August 2019, `caret` can pass information to/from 238 R packages.[^n3] What `caret` does to facilitate machine learning process development will be discussed in more detail.

[^n3]:The caret Package (https://topepo.github.io/caret/index.html)

Additionally, while searching for information regarding superior Machine Learning techniques, I became of aware of an article co-authored by Ross Quinlan and others, with the grand title, "Top 10 Algorithms in Data Mining"[^n4]. These 10 algorithms were identified by the IEEE, International Conference on Data Mining in December 2006. The algorithms were voted by the members of this organization as having the highest impact. As one would expect, these 10 algorithms are mainstays of Predictive Modeling. After further research I have also learned that this article and its companion book[^n5], have become the subject of an MIT course.[^n6]

[^n4]:"Top 10 Algorithms in Data Mining", X. Wu etal, Knowl Inf Syst, 2008, 14:1–37, DOI 10.1007/s10115-007-0114-2

[^n5]:"The Top Ten Algorithms in Data Mining", edited by X. Wu, V. Kumar, CRC Press, 2009, [Book available on Google Books](https://books.google.com/books?id=_kcEn-c9kYAC&printsec=frontcover&source=gbs_ViewAPI#v=onepage&q&f=false)

[^n6]:Cynthia Rudin, 15.097 Prediction: Machine Learning and Statistics. Spring 2012. Massachusetts Institute of Technology: MIT OpenCourseWare, https://ocw.mit.edu/, Creative Commons BY-NC-SA.

---

At this point, **Discuss ANTI-CANCER PEPTIDES**


The 672 proteins were taken from six different classes of oxygen-binding proteins consisting of 6 groups.

**7 Class Accuracies Via Support Vector Machine Models**  

|   Protein Name        |   n | Accuracy (%) |
|:----------------------|:----|-------------:|
| C/Control/negtive80   | 266 |    n |
| P/Positive/positive80 | 266 |    n |


I realized that this paper was great choice to model for several reasons. I postulated the high percent accuracies would very likely drop given a larger dataset of Oxygen binding proteins. Since the paper is from 2007, the number of proteins available to any researcher on Uniprot or on the Internet in general would have been small, 672 as mentioned above. As of July, 2019, the number of possible available number of proteins in the same class as Globins were 89,064.

For optimum scouting, Kuhn and Johnson suggest that a much broader framework of half a dozen or more machine learning techniques were commonly used in their opinion for screening in Bioinformaticists before finally choosing a good model candidate. The "Oxypred" paper did not discuss any model development therefore I speculated that a more thorough search using the "The Top Ten Algorithms in Data Mining" may provide an excellent chance to study the differences between the machine learning approaches.

By using these three papers, I would be able to easily generate data which should yield intuitive insights regarding the characteristics of the proteins of interest. But more importantly, the work would allow any reader to learn how a class of very diverse and impactful machine learning algorithms would stack up in the face of a small dataset. The preparation of the dataset used in this research is discussed in Appendix A.

