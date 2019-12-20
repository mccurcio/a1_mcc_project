# Applied Statistical Genetics with R For Population-based Association Studies 2009

bib:
A.S. Foulkes, Applied Statistical Genetics with R: For Population-based Association
Studies, Use R, DOI: 10.1007/978-0-387-89554-3 4,
c Springer Science+Business Media LLC 2009
source("http://people.umass.edu/foulkes/asg/examples/1.1.r")


## 4 Multiple Comparison Procedures

- false discovery rate (FDR)
- Formally, FDR is defined as the expected proportion of null hypotheses that are true among those that are declared significant.
- SEE: p. 99  Table 4.2. Errors for multiple hypothesis tests
- $FDR = E (V/R)$
- assuming R, the number of tests that are declared significant
- where V is the number of type-1 errors
- E(·) denotes expectation and is defined explicitly in Section 2.1.1

p. 98 - 4 Multiple Comparison Procedures
Table 4.1. Type-1 and type-2 errors in hypothesis testing

### Single-step and step-down adjustments . . . . . 101
### 4.2.1 Bonferroni adjustment  . . . . . . . . 102

- single-step adjustment
- p.102: The Bonferroni adjustment for multiple comparisons is a single-step procedure and probably the most straightforward adjustment to apply. It involves simply using $\alpha(0) = frac {\alpha} {m}$ in place of $\alpha$ for the level of each test
- where m is the number of tests to be performed.


### 4.2.2 Tukey and Scheffe tests . . . . . . . . . . 105
### 4.2.3 False discovery rate control .. 109
### 4.2.4 The q-value


## 6 Classification and Regression Trees

- Given $Y ~ x_1 + x_2 + x_3 + ...$
- A tree is constructed by first determining the variable x(j), among the set of all potential predictors, that is most predictive of the trait y.

### 6.1 Building a tree . . . . . 157
### 6.1.1 Recursive partitioning . . . . 157
### 6.1.2 Splitting rules . . . . . . . . . 158

#### Binary trait {-}

- first we need to define a rule for splitting our observations into subgroups
- y, that takes on the values 0 and 1
- typically proceeds by defining a measure of node impurity, or heterogeneity, and choosing the splitting variable to be the one that maximizes the reduction in this measure.
- Let the impurity for node $\omega$ be given by $I(\omega)$, such that $\phi = I(\omega ) − I( \omega L) − I(\omega R)$, where $\omega L$ and $\omega R$ are the left and right daughter nodes of $\omega$, respectively. fig.6.2
- SEE: page 160 for math eqs for choosing corresponding node impurity
- **Measures** that are commonly applied in the context of binary and quantitative traits
- the simplest measures of node impurity that has been proposed for this binary trait setting is given by $i(Ω) = min(p \omega, 1 − p \omega)$
- $p \omega = Pr(y = 1| \omega)$ is the probability of being a case given membership in $node \omega$. This impurity measure is commonly referred to as the Bayes error, minimum error or **misclassification cost**.

**Excellent description of splitting, p.160**

Consider for example a setting in which there are equal numbers of cases and controls so that at the root node we have $i(\omega)$ = min(0.50, 1−0.50) = 0.50. The idea behind this impurity measure is that a  non-informative split would result in a node within which exactly half of the members are cases and half are controls. In this case, we would say the node is highly impure. On the other hand, if 80% of the individuals are cases and 20% controls (that is, $p \omega$ = 0.80), then the node is relatively homogeneous. In other words, the impurity $i(\omega)$ = 0.20 is relatively low.

- Another commonly used measure of **impurity** is the Gini index, also called the nearest neighbor error, which is defined as $i(\omega) = 2 \* p \omega (1 − \omega Ω)$, where pΩ is again the probability of being a case, conditional on belonging to Ω.
- p.161 eq 6.8: $i (\omega) = \sum_{r \neq s} { p{(r| \omega)} \cdot p{(s| \omega)}}$



### 6.1.3 Defining inputs . . . . . . . . . . . . . . .. . . . . 167
### 6.2 Optimal trees . . . . . . . . . . . . . . . . . . . . . . . . 173
### 6.2.1 Honest estimates . . . . . . . . . .  . . . . . 174
### 6.2.2 Cost-complexity pruning . . . . . . . . . . . . . . . . . 174
### Problems . . . . . . . . . . .  . . . . . . . . . . . . . . . . . . 179



## 7 Additional Topics in High-Dimensional Data Analysis

### 7.1 Random forests . . . . . . . . . . . . . . . . . . . 182
### 7.1.1 Variable importance . . . . . . . . . . . . . . 183
### 7.1.2 Missing data methods . . . . . . . . . . . . . . . 187
### 7.1.3 Covariates . . . . . . . . . . . . . . . . . . . . 198
### 7.2 Logic regression . . . . . . . .. . . . . . . . . . . . 198
### 7.3 Multivariate adaptive regression splines . . . . 205

## Appendix R Basics

### A.1 Getting started . . .  . . . . . . . . . . . 213
### A.2 Types of data objects . . . . . . . . . . . . . . 216
### A.3 Importing data . . . . . .  . . . . . . . . . . . . . . . . . 220
### A.4 Managing data . . . . . . . . . . . . . . . . 221
### A.5 Installing packages . . . . . . . .  . . . . . . 224
### A.6 Additional help


