---
title: "ML-Types"
author: "Matthew Curcio"
date: "6/23/2019"
output: html_document
---

Title: ML-Types


```{r message=FALSE, warning=FALSE, include=FALSE}
knitr::opts_chunk$set(echo = TRUE, cache = TRUE)
library(knitr)
```

At the intersection between Statistics and Computer Science there is a portion outside of Bioinformtics. This intersecting area is where the field of Machine Learning or Predictive Modeling resides. 

Machine Learning, Predictive Modeling, Artificial Intellgence and even intelligent machines are all synonyms for pretty muc the same tool(s). I plan to use the Machine Learning or Predicttive Modeling interchanglably. The technology boils down to the use of mathematics, specifically statistics coupled with computer science. 

This boooklet will discuss supertwo of the most commonly studied facets of machine learning, Supervised and Unsupervised learning approaches.  

```{r, echo=FALSE, fig.cap="Two Types Of Machine Learning", out.width = '70%', fig.align="center"}
knitr::include_graphics("types_of_ML_small_size.png")
```


##### Definitions:

1. **Supervised learning** is used whenever we want to predict a certain
outcome from a given input, and we have examples of input/output pairs.
2. In **unsupervised learning**, the learning algorithm is just shown the input data
and asked to extract knowledge from this data.[^1]

[^1]:Introduction to Machine Learning with Python (2017), Andreas C. Müller & Sarah Guido, O'Reilly press, 2017

A second set of definitions might be helpful although from an different view.

1. Supervised learning is the machine learning task of learning a function that maps an input to an output based on example input-output pairs.[^2] The algorithm determines a pattern from the input information and groups this with its title or classification. It may also produce regression lines or models that can be used for predictions.

[^2]:Stuart J. Russell, Peter Norvig (2010) Artificial Intelligence: A Modern Approach, Third Edition, Prentice Hall

---

### Supervised learning  

**Input:**  

1. (X, Y) is a **labeled pair** 

Where:

- $\langle X \rangle ~~ is~ a~ matrix(m,n)~ \in \mathbb{R}^n$,

- $\langle Y \rangle  ~~ is~ a~ matrix(m,1),~~~ label~y_i \in \{1, 2, 3, ...,C\}~~$

**Output:**  

$f(x_i, x_j, ... ~| Y) = Classification(s)$ 

OR 

$f(x_i, x_j, ... ~| Y) = Regression ~model(s)$

### Unsupervised learning

**Input:**  

1. (X) is a **unlabeled data**,    
    
Where:

$\langle X \rangle ~~ is~ a~ matrix(m,n)~ \in \mathbb{R}^n$  

**Output:**  

$f(x_i, x_j, ...) = Classification(s)$, 

OR

$f(x_i, x_j, ...) = Regression ~model(s)$  

---




EOF

