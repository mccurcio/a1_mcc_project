
### Bayes’ Rule, Think Bayes

- The best value of the parameters theta star given one example is obtained using the principle of maximum-likelihood: SEE P.12

$\theta^star$ = arg max Products $(Pr(S = s_hat | X = x_i))$
 
Given a function, a Gaussian 'normal curve' defined as:

$f_/theta{(x)} = Bayes Rule$

-----------------------

Max Kuhn • Kjell Johnson
Applied Predictive Modeling

----

### preProcess , Transformations

As previously discussed, some features exhibited significantly skewness. The
skewness function in the e1071 package calculates the sample skewness statis-
tic for each predictor:


Using these values as a guide, the variables can be prioritized for visualizing
the distribution. The basic R function hist or the histogram function in the
lattice can be used to assess the shape of the distribution.

**See P. 53** To determine which type of transformation should be used, the MASS
package contains the Box-Cox function. Although this function estimates λ, it does not create the transformed variable(s). A caret function, BoxCoxTrans,
can find the appropriate transformation and apply them to the new data:


**Missing values for imputation**
To impute missing values, the impute package has a function, impute.knn , that uses K-nearest neighbors to estimate the missing data. The previously mentioned preProcess function applies imputation methods based on K-nearest neighbors.

**See P.54**

```
trans <- preProcess(segData, method = c("BoxCox", "center", "scale", "pca"))
trans
```
Call:
preProcess.default(x = segData, method = c("BoxCox", "center",
"scale", "pca"))
Created from 1009 samples and 58 variables
Pre-processing: Box-Cox transformation, centered, scaled,
principal component signal extraction
Lambda estimates for Box-Cox transformation:
Min. 1st Qu. Median
Mean 3rd Qu.
Max.
-2.00
-0.50
-0.10
0.05
0.30
2.00
NA's
11
PCA needed 19 components to capture 95 percent of the variance

---

- Filtering P.55

- To filter for near-zero variance predictors, the caret package function nearZero
Var

- To filter based on correlations, the `findCorrelation` function will apply the
algorithm in Sect. 3.5. For a given threshold of pairwise correlations, the function returns column numbers denoting the predictors that are recommended
for deletion:

```
highCorr <- findCorrelation(correlations, cutoff = .75)
length(highCorr)
```


## Over-Fitting and Model Tuning

## 4.8 Choosing Between Models, See P.78

1. Start with several models that are the least interpretable and most flexible, such as boosted trees or support vector machines. Across many problem domains, these models have a high likelihood of producing the empirically optimum results (i.e., most accurate).
2. Investigate simpler models that are less opaque (e.g., not complete black boxes), such as multivariate adaptive regression splines (MARS), partial least squares, generalized additive models, or naive Bayes models.
3. Consider using the simplest model that reasonably approximates the performance of the more complex methods.


## 4.9 Computing, P.80

- createDataPartition

For Resampling, use times=n
```
repeatedSplits <- createDataPartition(trainClasses, p = .80, times = 3)
str(repeatedSplits)
```

- Between-Model Comparisons, P.87

https://stats.stackexchange.com/questions/348014/on-the-difference-between-kappa-and-accuracy

- Accuracy and Kappa

These are the default metrics used to evaluate algorithms on binary and multi-class classification datasets in caret.

- Accuracy is the percentage of correctly classifies instances out of all instances. It is more useful on a binary classification than multi-class classification problems because it can be less clear exactly how the accuracy breaks down across those classes (e.g. you need to go deeper with a confusion matrix). Learn more about Accuracy here.https://en.wikipedia.org/wiki/Accuracy_and_precision

- Kappa or Cohen’s Kappa is like classification accuracy, except that it is normalized at the baseline of random chance on your dataset. It is a more useful measure to use on problems that have an imbalance in the classes (e.g. 70-30 split for classes 0 and 1 and you can achieve 70% accuracy by predicting all instances are for class 0). Learn more about Kappa here.https://en.wikipedia.org/wiki/Cohen%27s_kappa

- OR: https://www.youtube.com/watch?v=CRz6qkoSqvk

- Basic Model Building in R

There are two main conventions for specifying models in R: the formula
interface and the non-formula (or “matrix”) interface.

```
modelFunction(price ~ numBedrooms + numBaths + acres, + data = housingData)
# When using the '~' (tilda) it is common to say "Is modeled by"
# Versus
modelFunction(x = housePredictors, y = price)
```

- Determination of Tuning Parameters

The train function in the caret package has built-in modules
for 144 models and includes capabilities for different resampling methods,
performances measures, and algorithms for choosing the best model from the
profile.

See https://topepo.github.io/caret/train-models-by-tag.html

From: 7.0.47 Support Vector Machines
```
Least Squares Support Vector Machine with Polynomial Kernel

  method = 'lssvmPoly'

Type: Classification

Tuning parameters:

    degree (Polynomial Degree)
    scale (Scale)
    tau (Regularization Parameter)

Required packages: kernlab
```

- Between-Model Comparisons, P.87

One way to test between models is to use the 'resampling' command.

So if wwe are using a SVM model first, we would have a recipe like:
```
set.seed(1056)
svmFit <- train(Class ~ .,
                  data = GermanCreditTrain,
                  method = "svmRadial",
                  preProc = c("center", "scale"),
                  tuneLength = 10,
                  trControl = trainControl(method = "repeatedcv",
                  repeats = 5))
svmFit # This will print results of that test.
```

BUT instead we can use `resamples`

```
resamp <- resamples(list(SVM = svmFit,
                         Logistic = logisticReg))
summary(resamp)
```

Call:
summary.resamples(object = resamp)

Models: SVM, Logistic
Number of resamples: 50

Accuracy
Min. 1st Qu. Median Mean 3rd Qu. Max. NA's

SVM 0.6500 0.7375 0.7500 0.754 0.7625 0.85 0
Logistic 0.6125 0.7250 0.7562 0.749 0.7844 0.85 0

Kappa
Min. 1st Qu. Median Mean 3rd Qu. Max. NA's
SVM 0.18920 0.3519 0.3902 0.3897 0.4252 0.5946 0
Logistic 0.07534 0.2831 0.3750 0.3648 0.4504 0.6250 0
---

To assess possible differences between the models, the `diff` method is used:
```
modelDifferences <- diff(resamp)
summary(modelDifferences)
```

# Chapter 11 - Measuring Performance in Classification Models

## 11.2 Evaluating Predicted Classes

A common method for describing the performance of a classification model is the confusion matrix.

- The simplest metric is the overall accuracy rate (or, for pessimists, the
error rate).

Number of correctly classified site: TP
Total number of reference sites: Total samples

Overall Accuracy = TP/(Total samples) = X%

We could also express this as an error percentage, which would be the complement of accuracy (error + accuracy = 100%.

- The Kappa statistic (also known as Cohen’s Kappa) was originally designed to assess the agreement between two raters (Cohen 1960). Kappa takes into account the accuracy that would be generated simply by chance. The form of the statistic is

$\KAPPA = {O - E} over {1 - E}$

where O is the observed accuracy and E is the expected accuracy based on the marginal totals of the confusion matrix.

Add Kappa video HERE:

----
Insert: http://gsp.humboldt.edu/olm_2015/Courses/GSP_216_Online/lesson6-2/metrics.html

## Error Types


- Errors of Omission refer to reference sites that were left out (or omitted) from the correct class in the classified map. The real land cover type was left out or omitted from the classified map. Error of omission is sometime also referred to as a Type I error. An error of omission in one category will be counted as an error in commission in another category. Omission errors are calculated by reviewing the reference sites for incorrect classifications. This is done by going down the columns for each class and adding together the incorrect classifications and dividing them by the total number of reference sites for each class. A separate omission error is generally calculated for each class. This will allow us to evaluate the classification accuracy for each class.

- Errors of Commission

- Errors of omission are in relation to the classified results. These refer sites that are classified as to reference sites that were left out (or omitted) from the correct class in the classified map. Commission errors are calculated by reviewing the classified sites for incorrect classifications. This is done by going across the rows for each class and adding together the incorrect classifications and dividing them by the total number of classified sites for each class.


# Chapter 18 - Measuring Predictor Importance


## Two-Class Problems

Sensitivity = {# samples with the event and predicted to have the event}
              over {# samples having the event}

Specificity = {# samples without the event and predicted as nonevents}
              over {# samples without the event}

Often, there is interest in having a single measure that reflects the false-
positive and false-negative rates. Youden’s J Index (Youden 1950), which is

J = Sensitivity + Specificity − 1

measures the proportions of correctly predicted samples for both the event
and nonevent groups. In some contexts, this may be an appropriate method
for summarizing the magnitude of both types of errors.

However, The most common method for combining sensitivity and specificity into a single value uses the receiver operating characteristic (ROC) curve, discussed below.

positive predicted value = {Sensitivity × Prevalence} over
 {(Sensitivity × Prevalence) + ((1 − Specificity) × (1 − Prevalence))}

negative predicted value = {Specificity × (1 − Prevalence)}
over {(Prevalence × (1 − Sensitivity)) + (Specificity × (1 − Prevalence))}



supervised feature selection
Many predictive models have built-in or intrinsic measurements of predictor importance eg. many tree-based models monitor the increase in performance that occurs when adding each predictor to the model.

notion of variable importance

* Sect. 18.2 focuses on categorical outcomes. Finally, Sect. 18.3 discussed more general approaches to the problem.

- Correlations
Simple scatter plots of two predictors and the outcome. The relationship between solubility and number of carbon atoms is relatively linear and straightforward.

-  LOESS / LOWESS, p.465
LOESS (locally estimated scatterplot smoothing) and LOWESS (locally weighted scatterplot smoothing). They are two strongly related non-parametric regression methods that combine multiple regression models in a k-nearest-neighbor-based meta-model. A pseudo-R 2 statistic can be calculated derived from the residuals.

- MAYBE do not include MIC:
- Another metric, the maximal information coefficient (MIC), is discussed in Sect. 18.3, maximal information coefficient uses binning,
    - SEE: Maximal Information Coefficient for Feature Selection for ClinicalDocument Classification Paper
    - SEE: Detecting Novel Associations in Large Data Sets, David N. Reshe
    - minerva: Maximal Information-Based Nonparametric Exploration for Variable Analysis for R


---

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

- Single-step and step-down adjustments . . . . . 101
- 4.2.1 Bonferroni adjustment  . . . . . . . . 102

- single-step adjustment
- p.102: The Bonferroni adjustment for multiple comparisons is a single-step procedure and probably the most straightforward adjustment to apply. It involves simply using $\alpha(0) = frac {\alpha} {m}$ in place of $\alpha$ for the level of each test
- where m is the number of tests to be performed.


- 4.2.2 Tukey and Scheffe tests . . . . . . . . . . 105
- 4.2.3 False discovery rate control .. 109
- 4.2.4 The q-value

## 6 Classification and Regression Trees
- Given $Y ~ x_1 + x_2 + x_3 + ...$
- A tree is constructed by first determining the variable x(j), among the set of all potential predictors, that is most predictive of the trait y.

- 6.1 Building a tree . . . . . 157
- 6.1.1 Recursive partitioning . . . . 157
- 6.1.2 Splitting rules . . . . . . . . . 158

- Binary trait {-}

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

----



---

Applied Predictive Modeling - Notes
Max Kuhn • Kjell Johnson, 2013
DOI 10.1007/978-1-4614-6849-3
http://appliedpredictivemodeling.com/

---

For more theoretical treatments of predictive modeling, we suggest Hastie et al. (2008) and Bishop (2006).



# Part III Classification Models

## Measuring Performance in Classification Models

- Class Predictions
- Evaluating Predicted Classes
- Evaluating Class Probabilities

## Chapter 13 Nonlinear Classification Models

- Flexible Discriminant Analysis
- Support Vector Machines
- K-Nearest Neighbors
- Naive Bayes

## 14 Classification Trees and Rule-Based Models

- Rule-Based Models
- Bagged Trees
- Boosting
- C5.0
- Comparing Two Encodings of Categorical Predictors


## Chapter 18 Measuring Predictor Importance - All???


## Chapter 19 An Introduction to Feature Selection

- Consequences of Using Non-informative Predictors
- Approaches for Reducing the Number of Predictors
- Wrapper Methods
- Filter Methods
- Selection Bias





C Interesting Web Sites . . . . . . . 567

http://cran.r-project.org/web/views/MachineLearning.html
The machine learning Task View is a list of many predictive modeling pack-
ages in R.

Other programs are listed at http://www.kdnuggets.com/software/suites.html

---

Building Predictive Models in R Using the caret Package
Max Kuhn

November 2008, Volume 28, Issue 5.


Built with several goals in mind:

- eliminate syntactical differences between many of the functions for building and predicting models,
- develop a set of semi-automated, reasonable approaches for optimizing the values of the tuning parameters for many of these models
- create a package that can easily be extended to parallel processing systems.


NOTE:
- Sensitivity = true positives/(true positive + false negative)
  - If a person has a disease, how often will the test be positive (true positive rate)? 
  - Put another way, if the test is highly sensitive and the test result is negative you can be nearly certain that they don’t have disease. 

- Specificity = true negatives/(true negative + false positives)
  - If a person does not have the disease how often will the test be negative (true negative rate)?
  - if the test result for a highly specific test is positive you can be nearly certain that they actually have the disease.




Chapter 2 Visualization

- Scatterplot Matrix with Ellipses using **featurePlot**

- Q. what is the best way to do Featureplot with 20 features?

Or Selection by filter, (sbf) for feature selection

Max Kuhn - suggests that software architecture is important to learn

the major problems with machine learning in R is that most of R’s different machine learning tools have different interfaces.

https://cran.r-project.org/web/packages/caret/vignettes/caret.html

---

Frequentism and Bayesianism: What's the Big Deal? | SciPy 2014 | Jake VanderPlas

https://www.youtube.com/watch?v=KhAUfqhLakw&list=WL&index=5&t=5s

Uses Scipy...

A Question of Philosophy, What is Probability?

- Freq - frequencies of repeated events occurring. The outcome will be exp. 50/50.

- Bayesian - related to the uncertainty of events, "our own un-certainty or certainty of these events"

For a Bayesian, a coin toss is related to the probability that I have assigned to that coin being 50/50 or differently.

- Freq - variation of data is derived in terms of a fixed model of parameters

- Bayesian - variation of belief about those parameters on the fixed observed data

---

- Freq - Discuss the model is fixed and the data varies around the model

- Bayesian - Discuss the data being fixed and the model is varying around the data. The models can change given a set of data.

---

Given an example of star light measured by flux, we would approach the problem by Maximum Likelihood. EML for Freq.v.Bayesian png
When you have multiple measurements you multiple the measurements together. (EML for Freq.v.Bayesian.2  png)

---

Bayesians are interested in the posterior probability

$P(F_{true} | D) = P(D | F_{true})\* P(F_{true}) over P(D)$

---

The differences between the two ideas may not be big until you consider a more complicated situation.

- Handling nuisance parameters (Focus)
- Interpretation of Uncertainty (Focus)
- Incorporation of prior info
- Comparison & evaluation of Models

Ex. 1 - Pool model discussed at ~12 minutes

Ex. 2 - Uncertainties discussed at ~16 minutes

twitter: @jakevdp

github: jakevdp

blog: http://jakevdp.github.io

On his blog:
[Frequentism and Bayesianism V: Model Selection](http://jakevdp.github.io/blog/2015/08/07/frequentism-and-bayesianism-5-model-selection/)

---
**POSSIBLE ALGO OUTLINE**
1. Algorithm name,
1. Brief description,
1. Pseudo-code
1. Pluses and minuses
1. Big O notation
1. R code
1. a representative publication references or further information.


- POSSIBLE USE:
1. [Patrick Winston @ ocw.mit.edu](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-034-artificial-intelligence-fall-2010/lecture-videos/)

2. [Victor Lavrenko](https://www.youtube.com/channel/UCs7alOMRnxhzfKAJ4JjZ7Wg)

3. [Siraj Raval](https://www.youtube.com/watch?v=g8D5YL6cOSE)

4. [Andrew Ng](https://www.youtube.com/channel/UC5zx8Owijmv-bbhAK6Z9apg)

5. [Big O #1](https://stats.stackexchange.com/questions/270686/supervised-machine-learning-classifiers-big-o)
    * SVM (linear and all vs rest)- O(n^3)
    * Random Forest (CART) - O (M(mn logn)) M-number of trees m-number of attributes and n-number of samples.

6. [Princeton course - Worth a read](https://www.cs.princeton.edu/courses/archive/spring14/cos511/schedule.html)

---



---

# Support vector machines - SVM

## Description :
* are considered a must try—it offers one of the most robust and accurate methods among all well-known algorithms. It has a sound theoretical foundation, requires only a dozen examples for training, and is insensitive to the number of dimensions. [Top 10 Algos in DM]
* The metric for the concept of the “best” classification function can be realized geometrically.
* [Patrick Winston](https://www.youtube.com/watch?v=_PwhiWxHK8o&t=15s)
* The “soft margin” idea is aimed at extending the SVM algorithm
* [Andrew Ng](https://www.youtube.com/watch?v=hCOIMkcsm_g)

## Pseudocode:



---




# DATA EXPLORATION 

- https://github.com/StephenElston/ExploringDataWithPython



# STATISTICAL LEARNING 

An Introduction to Statistical Learning 

https://www-bcf.usc.edu/~gareth/ISL/i... (Essential) 

https://work.caltech.edu/telecourse.html 

- Elements of Statistical Learning (Extremely useful) 
https://web.stanford.edu/~hastie/Elem... 



============
Expanding what people has already said. You have to define what is your problem. Do you wish to compare just the algorithm? Then you have to select several very different datasets to test, use repeated cross-validation and paired t-test (for example). If you have an specific problem at hand you try to select many algorithms and parametrizations and you can use also cross-validation and paired t-test. If your interest is even broadher you can compare multiple algorithms over multiple datasets using critical diagrams. All depends on the objective of your comparison. There is further description of these methods and links to articles in my thesis:

https://www.researchgate.net/publication/237145103_Data_analysis_advances_in_marine_science_for_fisheries_management_Supervised_classification_applications?ev=prf_pub

===============


Data mining should be used to cherry pick data to support a theory but to first approach the data with a theory which can be tested.

---

Remember: ML is good for classification of categorization, regression, dimensionality reduction, development of algorithms, discovery of genetic sequences linked to diseases

---

- Supervised learning

''Supervised learning:'' Supervised learning is a form of evidence-based learning. The evidence is the known outcome for a given input and is in turn used to train the predictive model. Models are further classified into regression and classification, based on the outcome data type. In the former, the outcome is continuous, and in the latter the outcome is discrete. Stock trading and weather forecasting are some widely used applications of regression models, and span detection, speech recognition, and image classification are some widely used applications of classification models.

Some algorithms for regression are linear regression, Generalized Linear Models (GLM), Support Vector Regression (SVR), neural networks, decision trees, and so on; in classification, we have logistic regression, Support Vector Machines (SVM), Linear discriminant analysis (LDA), Naive Bayes, nearest neighbors, and so on.

''Semi-supervised learning:'' Semi-supervised learning is a class of supervised learning using unsupervised techniques. This technique is very useful in scenarios where the cost of labeling an entire dataset is highly impractical against the cost of acquiring and analyzing unlabeled data.

''Unsupervised learning:'' As the name suggests, learning from data with no outcome (or supervision) is called unsupervised learning. It is a form of inferential learning based on hidden patterns and intrinsic groups in the given data. Its applications include market pattern recognition, genetic clustering, and so on.

---

- Model evaluation

is a key step in any machine learning process. It is different for supervised and unsupervised models. In supervised models, predictions play a major role; whereas in unsupervised models, homogeneity within clusters and heterogeneity across clusters play a major role.

Some widely used model evaluation parameters for regression models (including cross validation) are as follows:

- Coefficient of determination
- Root mean squared error
- Mean absolute error
- Akaike or Bayesian information criterion
- Some widely used model evaluation parameters for classification models (including cross validation) are as follows:

- Confusion matrix (accuracy, precision, recall, and F1-score)
- Gain or lift charts
- Area under ROC (receiver operating characteristic) curve
- Concordant and discordant ratio
- Some of the widely used evaluation parameters of unsupervised models (clustering) are as follows:

- Contingency tables
- Sum of squared errors between clustering objects and cluster centers or centroids
- Silhouette value
- Rand index
- Matching index
- Pairwise and adjusted pairwise precision and recall (primarily used in NLP)

from: R Deep Learning Cookbook, PKS Prakash

---

- **randomForest**:

Provides methods for working with classification and regression problems, based on random forests algorithm which instructs creation of large number of bootstrapped trees on random samples of variables, classifying a particular case using all of these trees in this forest, and deciding on final outcome based on average or majority voting techniques depending upon whether regression or classification problem is dealt with.

- **e1071**: Provides methods to work with regression and classification problems. Algorithms such as following are included as part of functions:

1. Support Vector Machines (SVM)
2. naïve Bayes classifier
3. Bagged clustering
4. Short time Fourier transform

---

- Supervised learning problems vs Unsupervised

Following are two different kind of supervised learning problems which are later associated with different solution approaches:

Numerical related problems in which one predicts the quantity (represented using numbers). Algorithms such as regression, SVM, neural network, decision trees etc are used to solve these kind of problems.

Classification related problems in which one predicts classes such as yes/no, positive/negative, good/bad/ugly etc. Algorithms such as logistic regression, SVM, neural network, K-NN, decision trees etc are used to solve these kind of problems

https://vitalflux.com/top-10-solution-approaches-for-supervised-learning-problems/



Q. How do you get better at formulating questions to ask your AI?

A. this is data exploration, or exploratory data analysis. You can visualize, compute statistics, like mean, min/max, variance, covariance matrix, most frequent items, run some clustering algorithms. start from some kind of requirement, i.e. a "problem" as the target for your eventual solution. one thing that will make your life easier is if you reorganize your data in ways appropriate to your hypothesis and look for preliminary patterns using some very simple techniques. (https://www.reddit.com/r/MachineLearning/comments/15mh7q/question_regression_with_many_irrelevant_variables/)

---

- USE IN ML

Predictive Modeling: Represents packages which help in working with various different predictive models (linear/multivariate/logistic regression models, SVM, neural network etc.)

caret: Stands for Classification And REgression Training. Provides a set of functions which could be used to do some of the following when working with classification and regression problems. Depends upon number of packages and loads these packages appropriately (on-demand) to achieve above objectives.

- Data processing (splitting)
- Feature selection
- Evaluate Model tuning parameters based on resampling
- Predictor variable importance estimation
- Estimate model performance from the training set

---

## Where To Go From Here? 

As this book is on the intersection of the command line and data science, many related topics have only been touched upon. Now, it’s up to you to further explore these topics. The following subsections provide a list of topics and suggested resources to consult.

-

* Wickham, Hadley. 2009. <em>ggplot2: Elegant Graphics for Data Analysis</em>. Springer.
* McKinney, Wes. 2012. <em>Python for Data Analysis</em>. O’Reilly Media.
* Rossant, Cyrille. 2013. <em>Learning Ipython for Interactive Computing and Data Visualization</em>. Packt Publishing.


- Interpreting Data 

* Shron, Max. 2014. <em>Thinking with Data</em>. O’Reilly Media.
* Patil, DJ. 2012. <em>Data Jujitsu</em>. O’Reilly Media.


## Getting in Touch 

This book would not have been possible without the many people who created the command line and the numerous command-line tools. It’s safe to say that the current ecosystem of command-line tools for data science is a community effort. We have only been able to give you a glimpse of the many command-line tools available. New ones are created everyday, and perhaps some day you will create one yourself. In that case, we would love to hear from you. We’d also appreciate it if you would drop us a line whenever you have a question, comment, or suggestion. There are a couple of ways to get in touch:

- Email: <jeroen@datascienceworkshops.com>
- Twitter: [\@jeroenhjanssens](https://twitter.com/jeroenhjanssens/)
- Book website: <http://datascienceatthecommandline.com/>
- Book GitHub repository: <https://github.com/jeroenjanssens/data-science-at-the-command-line>


---

Tip
In general, it’s easier, cleaner, and less buggy to filter by column name (character
string), rather than by column number, because it’s not unusual for column order to
change in a data frame. You should almost never access data in a data frame by its
positional index. Instead, you should use the column name to specify columns, and a
filter to specify rows of interest.

---

https://ai.googleblog.com/2016/11/deep-learning-for-detection-of-diabetic.html
Deep Learning for Detection of Diabetic Eye Disease
Tuesday, November 29, 2016
Posted by Lily Peng MD PhD, Product Manager and Varun Gulshan PhD, Research Engineer

---




---


---

SEE from P.29 of SVM Succinctly, by Alexandre Kowalczyk

perceptron_learning_algorithm <- function(X, y){
    set.seed(1964)
    w = runif(3) # can also be initialized at zero.
    misclassified_examples = predict(hypothesis, X, y, w)

    while misclassified_examples.any():
        x, expected_y = pick_one_from(misclassified_examples, X, y)
        w = w + x * expected_y # update rule
        misclassified_examples = predict(hypothesis, X, y, w)

    return w
}


---

---

http://www.svms.org/comparison/Scholkopfetal1996.pdf
Comparing SVM with Gaussian Kerenel ...

---

MUKHERJEE, S., Bioinformatics Applications and Feature Selection for SVMs
Mukherjee (2001)

---

# - Exploratory Data Analysis

## What is Exploratory Data Analysis?

EDA is form of statistical data analysis which begins by exploring data rather than testing clearly formulated prior hypotheses. Exploratory data analysis does as it says: it explores the pattern of the data set under analysis, considering its range, level, outliers, batching it before graphing and transforming it. (https://encyclopedia2.thefreedictionary.com/exploratory+data+analysis)

---

* it allows to get closer to the certainty that the future results will be valid, correctly interpreted, and applicable to the desired business contexts.
(https://medium.com/@InDataLabs/why-start-a-data-science-project-with-exploratory-data-analysis-f90c0efcbe49)

---

In Roger Peng's e-book entitled [Exploratory Data Analysis](https://leanpub.com/exdata), he uses the analogy of movie production to help describe the process. In the first stages of movie development a directory might have an idea that he/she wants to explore. The scene or idea to be captured might be in the beginning, middle or end of the final project, but that seed of an idea is most valuable to visualize. From there other ideas might flow. This is often true with a larger movie. Scenes are not always shot in chronological order. One viewpoint may spring from the preceding idea or experimental view of exploratory work.

---

Q. What are the Methods of Exploratory Data Analysis

A. The same may be true for "Exploratory Data Analysis", 

---

- It is often the situation when they realize, that they have a lot of data and no ideas of what value that data can bring to their business decision making. (https://medium.com/@InDataLabs/why-start-a-data-science-project-with-exploratory-data-analysis-f90c0efcbe49)

---




---


---




3 Categories of Learning

1. Supervised; continuous output (1-10^6) or discrete (Class 1,2,3,4) or categorical output (yes or no)
2. Unsupervised; binning, clustering
3. Reinforcement learning; really cool


---

# Linda's scientific method

[slideshare](https://www.slideshare.net/PyData/random-forests-r-vs-python-linda-uruchurtu)

1. It is always a good idea to look at the data set.
2. Formulate a question
3. Formulate an Hypothesis
  - 1st Attempt - can you use an easy test using regression

4. Build Model to answer your questions and test
  - If 1st attempt model leads to looking at x variables do that! 
  - Narrow down variables, dimension reduction!!

- 

OOB
- Each bootstrap sample not used in the construction of the tree becomes a test set. The oob error estimate is given by the misclassification error (MSE for regression), averaged over all the samples.

Variable Importance
- Determined by looking at how much the prediction error increase when (OOB) data for that variable is permuted while others are left unchanged.

R RF libraries = randomForest, caret, PARTY, BIGRF
- 'randomForest' package for R has defaults for 500 TREES? and mtry=p/3 for regression and sqrt(p) for classification.
- 500 is WAY too BIG.

Show number of matrix
? rows and ? columns

randomForest in R for 60 trees took  
   - 40 minutes  
   - rmse: 14.587  
   - rsq: 0.5811  
   
RandomForestRegressor in Python 60 trees  
    - 3 minutes!!!  
    - rmse: 14.687  
    - rsq: 0.575  
    
- Show graphs for both
- Feature importance
- graph of feature importance
- Table of RMSE
- Table of confusion matrix for Classification results
    - R training 9 minutes
    - Python training 3 minutes
    - Show precision and accuracy
- Show QQ Plots


- Principle component Analysis was done to narrow down features even more

comments on analysis - does one beat the other

Concluding remarks

- why is one better 
- good accuracy?
- feature variables
- What to try next?
    - Other matrix factorization techniques
    - Full factor analysis(?) 
    - SVM

---

# What algorithms and techniques are must-knows for a junior data scientist?

Ankit Sharma, Deputy Data Science Manager (R&D) at Flytxt BV (2018-present)
Updated Sep 24

In my opinion, for a Jr. Data Scientist, the list of techniques and algorithms should encompass the following. I have put the techniques and algorithms as per the machine learning pipeline they occur in for better understanding.

## Hypothesis testing:
   - This is sort of essential because you will have better understanding of various tests and model outputs if you know this.



- Plotting:
  - base (R)
  - ggplot2 (R)
  - Matplotlib and Seaborn (Python)
  - Sound understanding of
    - Bar plot **should** be used for categorical variables and
    - Histogram should be used for continuous variables etc.
    - Box plots
    - Scatterplots
    - Scree plots




---

Abhishek Kuppili, works at Deloitte
Answered Feb 10, 2015
Random Forest is an ensemble model of decision trees. Time complexity for building a complete unpruned decision tree is O( v * n log(n) ), where n is the number of records and v is the number of variables/attributes.

While building random forests you have to define the number of trees you want to build (assume it to be, ntree) and how many variables you want to sample at each node (assume it to be, mtry). 

Since we would only use mtry variables at each node the complexity to build one tree would be O( mtry * n log(n) )

Now for building a random forest with ntree number of trees, the complexity would be O( ntree * mtry * nlog(n) )

This is the worst case scenario, i.e., assuming the depth of the tree is going to be O(log n). But in most cases the build process of a tree stops much before this and it is hard to estimate.

But you could also restrict the depth of the trees that you would be building in your random forest. say you restrict the maximum depth of your tree to be "d" then the complexity calculations can be simplified to:

  O( ntree * mtry * d * n)

Note. The above calculations are ignoring the complexity involved for random selection of variables that needs to be done at each node. I believe this would add an additional O( v * d * ntree)

Diego Cantor, Applying machine learning research to interesting problems
Answered Mar 2, 2015
It's O(max(n,d) min (n,d)^2), where n is the number of points and d is the number of dimensions, according to:

Chapelle, Olivier. "Training a support vector machine in the primal." Neural Computation 19.5 (2007): 1155-1178.

https://www.queryxchange.com/q/20_123040/what-39-s-wrong-with-t-sne-vs-pca-for-dimensional-reduction-using-r/


Machine learning classifiers big-O or complexity

To evaluate the performance a new classifier algorithm, I'm trying to compare the accuracy and the complexity (big-O in training and classifying). From Machine Learning: a review I get a complete supervised classifiers list, also a accuracy table between the algorithms, and 44 test problems from UCI data repositoy. However, I can't find a review, paper or web-site with the big-O for common classifiers like:
C4.5 
RIPPER (I think this might not be possible, but who knows) 
ANN with Back Propagation 
Naive Bayesian 
K-NN 
SVM 
https://www.thekerneltrip.com/machine/learning/computational-complexity-learning-algorithms/

https://datascience.stackexchange.com/questions/6838/when-to-use-random-forest-over-svm-and-vice-versa

https://datascience.stackexchange.com/questions/35804/what-is-the-time-complexity-of-linear-regression

---

https://rpubs.com/cyobero/C50

1. 
