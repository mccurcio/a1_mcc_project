When To Use Decision Tree Learning?

    The most commonly reasonable reason to used Decision Tree is when you realized that Naive Bayes will not satisfy your goal. Everybody knew that it is naive to seeing all features as independent variables.
    If we have categorical data, for example: hot, mild, and cold.
    If we have attribute-value pairs data, for example: an attribute ‘temperature’ may has some discrete values ‘hot’, ‘mild’, and ‘winter’.
    If objective value has discrete output values, for example ‘yes’, or ‘no’.

C4.5 Algorithm in Pseudocode - 

the general algorithm for building decision trees is[^4]

[^4]:S.B. Kotsiantis, "Supervised Machine Learning: A Review of Classification Techniques", Informatica 31(2007) 249-268, 2007

    Check for the above base cases.
    For each attribute a, find the normalized information gain ratio from splitting on a.
    Let a_best be the attribute with the highest normalized information gain.
    Create a decision node that splits on a_best.
    Recur on the sublists obtained by splitting on a_best, and add those nodes as children of node.



 https://medium.com/machine-learning-guy/an-introduction-to-decision-tree-learning-id3-algorithm-54c74eb2ad55

---

https://www.rulequest.com/see5-info.html

Data mining is all about extracting patterns from an organization's stored or warehoused data. These patterns can be used to gain insight into aspects of the organization's operations, and to predict outcomes for future situations as an aid to decision-making. 

 Some important features:

    * See5/C5.0 has been designed to analyze substantial databases containing thousands to millions of records and tens to hundreds of numeric, time, date, or nominal fields. See5/C5.0 also takes advantage of computers with up to eight cores in one or more CPUs (including Intel Hyper-Threading) to speed up the analysis.
    * To maximize interpretability, See5/C5.0 classifiers are expressed as decision trees or sets of if-then rules, forms that are generally easier to understand than neural networks. 
    * is easy to use (easy to understand) and does not presume any special knowledge of Statistics or Machine Learning 

    ARTICLES:
    https://www.rulequest.com/see5-pubs.html

C5.0 Python code:
    https://github.com/Bladefidz/machine-learning-tutorials/blob/master/decision-tree/decision_tree.py
    
    
----

100_page_ml_book_NOTES

"Machine learning can also be defined as the process of solving a practical problem by
1) gathering a dataset, and
2) algorithmically building a statistical model based on that dataset. That statistical model is assumed to be used somehow to solve the practical problem."

Types of Learning:
1. supervised,
2. semi-supervised,
3. unsupervised,
4. reinforcement

NOTE: SVM algorithm in Chapter 3

1.2.1 Supervised Learning

- dataset is the collection of labeled examples, sometimes called a predictor
- xi among N is called a feature vector
- label yi can be either an element belonging to a finite set of classes {1, 2, . . . , C}, eg. {type1, type2}
- f(x1, x2, x3,...xn)= yi, {(x i , y i )}


1.2.2 Unsupervised Learning

- In unsupervised learning, the dataset is a collection of unlabeled examples {x i } N i=1 .
- For example, in clustering, the model returns the id of the cluster for each feature vector

1.2.3 Semi-Supervised Learning

- semi-supervised learning, the dataset contains both labeled and unlabeled examples.
- Usually, the proportion of unlabeled examples is much higher than unlabeled.


1.2.4 Reinforcement Learning

NEED better definition:
- Reinforcement learning is a subfield of machine learning where the machine exists in an environment and is capable of perceiving the state of that environment as a vector of features. The machine can execute actions in every state. Different actions bring different rewards and could also move the machine to another state of the environment. The goal of a reinforcement learning algorithm is to learn a policy. A policy is a function. The action is optimal if it maximizes the expected average reward.

1.3 How Supervised works

- **supervised learning** is the most frequently used in practice.
- Start with dataset of nxi's With labels for nyi's, {"m", "f"}, for some algorithms it is better to have a numerical value, eg. {0,1} (an indicator variable) or {-1, +1}.

- SVM is a great example to investigate! The dataset has two multi-dimensional spaces that may be separated by a decision boundary.  If the example is 2D then think of the boundary being the widest highway that will separate the two groups.
- wx - b = 0, where wx = {w1x1 + w2x2 + ... wnxn}, if we consider the predictor to be {-1, +1}, then we can see that separation will occur in the situation, y = sign_(label)(wx - b)

Therefore:
- `wx i - b >= 1 if y i = +1`  OR
- `wx_i_- b < 1  if y i = ≠1`

The hyperplane must be one less dimension than the dataset, for example, in a 3D space the hyperplane is a 2D plane.

- In a 2D space, we get the very familiar hyperplane that is a 1D line, very similar to the y=mx+b that we learned in grade school.

if we want to minimize the distance between the two vector spaces then you could use the Euclidean norm of w, ||w|| is the magnitude or sqrt(x2 + y2 + z2).

NOTE: WHEN to add division between Classification and Regression.

Remember: Any classification learning algorithm that builds a model implicitly or explicitly creates a decision boundary. A decision boundary can be straight, or curved, or it can have a complex form.


- In practice, there are two other essential differentiators of learning algorithms to consider:
1. speed of model building and
2. prediction processing time.


1.4 Why the Model Works on New Data

- If training examples are selected randomly & independently using the same procedure, then, **statistically**, it is more likely that the new negative
example will be located closer to negative examples.

- For less likely situations, our model will make errors, because these situations are run across less often.

HOW TO REPHRASE: The number of errors will more likely be smaller than the number of correct predictions.

So it tends to reason that the larger the dataset the larger are the chances of describing all or most of the probable outcomes that one would encounter.


## "Probably approximately correct" learning theory by Leslie Valiant

- Requirements of Learning: Cannot expect a learner to learn a concept exactly. There are only a small fraction of examples that describe our available instance/experimental space. It may be very difficult to describe the entire space with a small set.

- Cannot always expect to learn a close approximation to the target concept, the training set will not be representative of your model. It will may/contain uncommon examples.

- The only realistic expectation of a good learner is that with high probability it will learn a close approximation to the target concept/model.

- The only reason we can hope for this is the *consistent distribution assumption*.


---

# 2 Notation and Definitions

- Scalars, Vectors, and Sets, Sigma (summation) Notation, Pi (product) Notation


2.1.5  Operations on Vectors (linear algebra)

- functions, a dot-product of two vectors is a scalar
- domain,range and interval, local min and max
- Derivative and Gradient: they find the slope(s) of functions, gradients find partial derivatives.
- Gradient is Capital Delta notation.

2.2 Random Variable

- random variable
- discrete random variable
- probability distribution
- prob mass function (pmf)
- probability density function (pdf)
- cumulative mass function (cmf)
- expectation of X

2.3 unbiased estimators

- E[ theta_hat (S_x_) ] = 0
the error of the estimators should be zero if the measurement is to be UNBIASED.


2.4 Bayes’ Rule

Think Bayes

-The best value of the parameters theta star given one example is obtained using the principle of maximum-likelihood: SEE P.12

theta star = arg max Products (Pr(S=s_hat | X=x_i_))

Given a function, a Gaussian 'normal curve' defined as:

$f_/theta{(x)} = Bayes Rule $

2.6 Parameters vs. Hyperparameters

- A hyperparameter is a property of a learning algorithm, usually (but not always) having a numerical value. That value influences the way the algorithm works. Hyperparameters aren’t
learned by the algorithm itself from data. They have to be set by the data analyst before running the algorithm.

2.7 Classification vs. Regression

- **Classification** is the problem of trying to assign a label to a previously unlabeled example.

- the classification problem is solved by usually using a collection of examples/objects *already* labeled and producing a model that can NOW take unlabeled samples and label them with the information at hand.

- Is the labeled set binary? {0, 1}
or
- Multi-class (3 or more labels or classifications)

- **Regression** is the problem of predicting a real-value label (often called a target) given an unlabeled example.

- The regression problem is solved by a regression learning algorithm that takes a collection of labeled examples as inputs and produces a model that can *then* take an unlabeled example as a new input and output a target value.


2.7 Model-Based vs. Instance-Based Learning

**DEFINE: Instance-Based Learning**

1. Model-based learning algorithms use the training data to create a model that has parameters learned from the training data. In SVM, the two parameters we saw were w`*` and b`*`.

2. Instance-based learning algorithms use the whole dataset as the model. k-Nearest Neighbors (kNN) is very common.



2.8 Shallow vs. Deep Learning

Ex.
![](Surface.vs.Deep.Learning.png)
GET GOOD DEFINITION!!!


3 Fundamental Algorithms

3.1 Linear Regression

3.2 Logistic Regression

- standard logistic function (also known as the sigmoid function)

f(x) = 1 / (1 + e^-x)

or

f_w,b_(x) = 1 / (1 + e^-(wx+b))


3.3 Decision Tree Learning

- acyclic graph

- There are various formulations of the decision tree learning algorithm. However this discussion only considers **ID3**.

- The optimization criterion, in this case, is the average log-likelihood: See Chapter 3; page 9; formula (5).

- contrary to the logistic regression learning algorithm which builds a parametric model by finding an optimal solution to the optimization criterion, the ID3 algorithm optimizes it approximately by constructing a **non-parametric model**.

Ex.
In the first node of the decision tree; it makes the
*SAME* prediction for ANY input.

f_{DT}_^{S} = 1 / {S} * Summation of y's


- The prediction given by the above model, f_{DT}(x), would be the same for any input of x.

### decision trees such as C4.5 don't make an assumption regarding the distribution of the data, they are nonparametric. (stackoverflow, https://stackoverflow.com/questions/13845816/are-decision-trees-e-g-c4-5-considered-nonparametric-learning)

- In other words, A distribution is not required for C4.5. You can sort all your instances by the value of your continuous attribute (y's). (stackoverflow, https://stackoverflow.com/questions/13845816/are-decision-trees-e-g-c4-5-considered-nonparametric-learning)

- the algorithm doesn’t guarantee an optimal solution. The model can be improved by using techniques like *backtracking* during the search for the optimal decision tree at the cost of possibly taking longer to build a model.

- entropy-based split criterion intuitively makes sense: entropy reaches its minimum of 0 when all examples in S have the same label;


3.4 Support Vector Machine

- SVM is also **nonparametric**

### Two critical questions answered here;
1. What if there’s noise in the data and no hyperplane can perfectly separate positive examples from negative ones? **Penalties**
2. What if the data cannot be separated using a plane, but could be separated by a higher-order polynomial? **Yes**


3.4.1 Dealing with Noise

- To extend SVM to cases in which the data is not linearly separable, we introduce the hinge loss function: max (0, 1 - y_i_ (wx_i_ - b)).

- SVMs that optimize hinge loss are called **soft-margin** SVMs, while the original formulation is referred to as a **hard-margin** SVM.

#### Define Soft and Hard Margin Boundaries:

--- 

# **5.2 Learning Algorithm Selection**

1. Explainability
1. In-memory vs. out-of-memory
1. Number of features and examples
1. Categorical vs. numerical features
1. Nonlinearity of the data
1. Training speed
1. Prediction speed


## How many?

training examples do you have in your dataset? How many features does each example have? Some algorithms, including neural networks and gradient boosting (we consider both later), can handle a huge number of examples and millions of features. Others, like SVM, can be very modest in their capacity.


----

Parametric Approach to Dimension Reduction
video

Forward Selection Method Approach
- Add a new Dimension one at a time then look at goodness of fit and error statistics. if the feature is good keep it else remove it from the model.
- add new dim if error is low and the goodness of fit goes up, could use BIC of AIC.
- good for RF: logistic regression, neural network, SVM.


Backward Selection Method
- one variable at at time is deleted and the model goodness of fit is compared.

if the deletion of a feature reduces error and the goodness of fit increases that then the variable is dropped else it is kept.

More can be found Book:
The comparisons of data mining techniques for the predictive accuracy of probability of default credit card clients, Expert Systems with Application, Yeh & Lien 2009,  36(2), 2473-2480

Dimensionality Reduction Methods Include:
1. PCA
2. SVD
3. Iterative feature Selection method(s?)

Problems that can occur with high D data is high sparsity, for example.

Too many variables may be detrimental. For example, if there are actually thirty D that effect sales but the company cannot control all of them (such as weather) then it may not be worth trying to model them.  

By reducing Dimensions it can also save space and cost.

Good for unsupervised and supervised classification or regression.

Remember Highly correlated variables mean redundant data.

# Dim Reduction Techniques
1. Parametric or model based
  - PCA
  - Forward feature selection
  - Backward feature selection
  - Parametric methods, like iterative feature selection
2. Non-parametric

---

Max Kuhn • Kjell Johnson
Applied Predictive Modeling

Although there are other R packages that allow one to look at different models at the same time, caret has the broadest reange of models that are available. Coming in at 144+.

The benefit of using caret is that one can use the same syntax, essential that same command for the 144+ different models.  

https://topepo.github.io/caret/index.html

## 3.4 Dealing with Missing Values

Missing data should not be confused with censored data where the exact
value is missing but something is known about its value. For example, a
company that rents movie disks by mail may use the duration that a customer
has kept a movie in their models. If a customer has not yet returned a movie,
we do not know the actual time span, only that it is as least as long as the
current duration. Censored data can also be common when using laboratory
measurements. Some assays cannot measure below their limit of detection.
In such cases, we know that the value is smaller than the limit but was not
precisely measured.

- For predictive models, it is more common to treat these data as simple missing
data or use the censored value as the observed value. missing data can be imputed.

- One popular technique for imputation is a K-nearest neighbor model.

If the number of predictors affected by missing values is small, an exploratory analysis of the relationships between the predictors is a good idea.
For example, visualizations or methods like PCA can be used to determine if
there are strong relationships between the predictors. If a variable with missing values is highly correlated with another predictor that has few missing
values, a focused model can often be effective for imputation.

- knn - A new sample is imputed by finding the samples in the training set “closest”
to it and averages these nearby points to fill in the value.

## 3.5 Removing Predictors

There are potential advantages to removing predictors prior to modeling.
First, fewer predictors means decreased computational time and complexity.

**zero variance predictor** - A tree-based model (Sects. 8.1 and 14.1) is impervious, a model such as linear regression would find these data problematic.

- The fraction of unique values over the sample size is low (say 10 %).
- The ratio of the frequency of the most prevalent value to the frequency of the second most prevalent value is large (say around 20).

- Between-Predictor Correlations - multicollinearity,
    - Fig. 3.10: A visualization of the cell segmentation correlation matrix. The order of the variables is based on a clustering algorithm.

- A “scree plot” where the percentage of the total variance explained by each component is shown

- Since collinear predictors can impact the variance of parameter estimates in this model, a statistic called the variance inflation factor (VIF) can be used to identify predictors that are impacted (Myers 1994).

- A less theoretical, more heuristic approach to dealing with this issue is to remove the minimum number of predictors to ensure that all pairwise correlations are below a certain threshold. While this method only identify collinearities in two dimensions, it can have a significantly positive effect on the performance of some models.

The algorithm is as follows:
1. Calculate the correlation matrix of the predictors.
2. Determine the two predictors associated with the largest absolute pairwise correlation (call them predictors A and B).
3. Determine the average correlation between A and the other variables. Do the same for predictor B.
4. If A has a larger average correlation, remove it; otherwise, remove predictor B.
    - Suppose we wanted to use a model that is particularly sensitive to between-predictor correlations, we might apply a threshold of 0.75.
5. Repeat Steps 2–4 until no absolute correlations are above the threshold.


## 3.6 Adding Predictors & 3.7 Binning Predictors

- binning w/ Dummy variables or indicator variables, also called sub-setting in R.

## 3.8 Computing

**apropos("confusion")**
**RSiteSearch("confusion", restrict = "functions")**


### Transformations

As previously discussed, some features exhibited significantly skewness. The
skewness function in the e1071 package calculates the sample skewness statis-
tic for each predictor:

```
library(e1071)
> # For one predictor:
> skewness(segData$AngleCh1)
[1] -0.0243
# Since all the predictors are numeric columns, the apply function can
# be used to compute the skewness across columns.
skewValues <- apply(segData, 2, skewness)
head(skewValues)
```

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

#### Filtering P.55

- To filter for near-zero variance predictors, the caret package function nearZero
Var

- To filter based on correlations, the `findCorrelation` function will apply the
algorithm in Sect. 3.5. For a given threshold of pairwise correlations, the function returns column numbers denoting the predictors that are recommended
for deletion:

```
highCorr <- findCorrelation(correlations, cutoff = .75)
length(highCorr)
```

# Chapter 4
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

### Between-Model Comparisons, P.87

https://stats.stackexchange.com/questions/348014/on-the-difference-between-kappa-and-accuracy

### Accuracy and Kappa

These are the default metrics used to evaluate algorithms on binary and multi-class classification datasets in caret.

- Accuracy is the percentage of correctly classifies instances out of all instances. It is more useful on a binary classification than multi-class classification problems because it can be less clear exactly how the accuracy breaks down across those classes (e.g. you need to go deeper with a confusion matrix). Learn more about Accuracy here.https://en.wikipedia.org/wiki/Accuracy_and_precision

- Kappa or Cohen’s Kappa is like classification accuracy, except that it is normalized at the baseline of random chance on your dataset. It is a more useful measure to use on problems that have an imbalance in the classes (e.g. 70-30 split for classes 0 and 1 and you can achieve 70% accuracy by predicting all instances are for class 0). Learn more about Kappa here.https://en.wikipedia.org/wiki/Cohen%27s_kappa

- OR: https://www.youtube.com/watch?v=CRz6qkoSqvk


#### Basic Model Building in R

There are two main conventions for specifying models in R: the formula
interface and the non-formula (or “matrix”) interface.

```
modelFunction(price ~ numBedrooms + numBaths + acres, + data = housingData)
# When using the '~' (tilda) it is common to say "Is modeled by"
# Versus
modelFunction(x = housePredictors, y = price)
```


### Determination of Tuning Parameters

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


### Between-Model Comparisons, P.87

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

Next IF we were interesting in fitting a generalized linear model we would use:
```
logisticReg <- train(Class ~ .,
                     data = GermanCreditTrain,
                      method = "glm",
                     trControl = trainControl(method = "repeatedcv",
                     repeats = 5))
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

#### Errors of Omission

- Errors of omission refer to reference sites that were left out (or omitted) from the correct class in the classified map. The real land cover type was left out or omitted from the classified map. Error of omission is sometime also referred to as a Type I error. An error of omission in one category will be counted as an error in commission in another category. Omission errors are calculated by reviewing the reference sites for incorrect classifications. This is done by going down the columns for each class and adding together the incorrect classifications and dividing them by the total number of reference sites for each class. A separate omission error is generally calculated for each class. This will allow us to evaluate the classification accuracy for each class.


#### Errors of Commission

- Errors of omission are in relation to the classified results. These refer sites that are classified as to reference sites that were left out (or omitted) from the correct class in the classified map. Commission errors are calculated by reviewing the classified sites for incorrect classifications. This is done by going across the rows for each class and adding together the incorrect classifications and dividing them by the total number of classified sites for each class.


## Two-Class Problems

Sensitivity = {# samples with the event and predicted to have the event}
              over {# samples having the event}

Specificity = {# samples without the event and predicted as nonevents}
              over {# samples without the event}

---
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


#### Receiver Operating Characteristic (ROC) Curves, P.262

DEFINE: ROC

---

# Chapter 18 - Measuring Predictor Importance

supervised feature selection
Many predictive models have built-in or intrinsic measurements of predictor importance eg. many tree-based models monitor the increase in performance that occurs when adding each predictor to the model.


notion of variable importance

* Sect. 18.2 focuses on categorical outcomes. Finally, Sect. 18.3 discussed more general approaches to the problem.

### Correlations
Simple scatter plots of two predictors and the outcome. The relationship between solubility and number of carbon atoms is relatively linear and straightforward.

###  LOESS / LOWESS, p.465
LOESS (locally estimated scatterplot smoothing) and LOWESS (locally weighted scatterplot smoothing). They are two strongly related non-parametric regression methods that combine multiple regression models in a k-nearest-neighbor-based meta-model. A pseudo-R 2 statistic can be calculated derived from the residuals.

- MAYBE do not include MIC:
- Another metric, the maximal information coefficient (MIC), is discussed in Sect. 18.3, maximal information coefficient uses binning,
    - SEE: Maximal Information Coefficient for Feature Selection for ClinicalDocument Classification Paper
    - SEE: Detecting Novel Associations in Large Data Sets, David N. Reshe
    - minerva: Maximal Information-Based Nonparametric Exploration for Variable Analysis for R


---

Table of Contents From MLPlus.com 'caret' tutorial


1. Introduction
   - `caret` works with everything!
   - So far it works with over 200 models, See: web page
   - caret will help you tune also!
   - Generally:
     - Data Preparation and Preprocessing
     - Visualize the importance of variables
     - Feature Selection using RFE
     - Training and Tuning the model
     - Model Evaluation


2. Initial Setup – load the package and dataset
   - [Brief Introduction to caretEnsemble](https://cran.r-project.org/web/packages/caretEnsemble/vignettes/caretEnsemble-intro.html)


3. Data Preparation and Preprocessing  
   3.1. How to split the dataset into training and validation?  
    3.2. Descriptive statistics  
    3.3. How to impute missing values using preProcess()?  
    3.4. How to create One-Hot Encoding (dummy variables)?  
    3.5. How to preprocess to transform the data?  
      - range: Normalize values so it ranges between 0 and 1
      - center: Subtract Mean
      - scale: Divide by standard deviation
      - BoxCox: Remove skewness leading to normality. Values must be > 0
      - YeoJohnson: Like BoxCox, but works for negative values.
      - expoTrans: Exponential transformation, works for negative values.
      - pca: Replace with principal components
      - ica: Replace with independent components
      - spatialSign: Project the data to a unit circle


4. How to visualize the importance of variables using `featurePlot()`


5. How to do feature selection using recursive feature elimination (`rfe`)?


6. Training and Tuning the model  
   6.1. How to `train()` the model and interpret the results?  
   6.2. How to compute variable importance?  
   6.3. Prepare the test dataset and predict  
   6.4. Predict on test data  
   6.5. Confusion Matrix  


7. How to do hyperparameter tuning to optimize the model for better performance?  
   7.1. Setting up the `trainControl()`  
   7.2. Hyperparameter Tuning using `tuneLength`  
   7.3. Hyperparameter Tuning using `tuneGrid`  


8. How to evaluate the performance of multiple machine learning algorithms?  
   8.1. Training Adaboost  
   8.2. Training Random Forest  
   8.3. Training xgBoost Dart  
   8.4. Training SVM  
   8.5. Run `resamples()` to compare the models  


9. Ensembling the predictions  
   9.1. How to ensemble predictions from multiple models using `caretEnsemble`?  
   9.2. How to combine the predictions of multiple models to form a final prediction  


10. Conclusion

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


----

4 Big Challenges in Machine Learning (ft. Martin Jaggi)

https://www.youtube.com/watch?v=v3QGgtmAZTE&t=0s&index=10&list=WL

Supervised Vs Unsupervised

Problem 1: The vast majority of information in the world in unlabeled so it would be advantageous to have a good Unsupervised machine learning algorithms to use.

Problem 2: Algorithms are very specialized, too specific.

Problem 3: Transfer learning to new environments

Problem 4: Scale, the scale of information is huge in reality and we have computers that work in gigabytes not the Exabytes that humans may have available to them. The scale of distributed Big Data...

---

Applied Predictive Modeling - Notes
Max Kuhn • Kjell Johnson, 2013
DOI 10.1007/978-1-4614-6849-3
http://appliedpredictivemodeling.com/

---

For more theoretical treatments of predictive modeling, we suggest Hastie et al. (2008) and Bishop (2006).


# Topics Useful to ME:

## Chapter 3 Data Pre-processing, p27

- 3.2 Data Transformations for Individual Predictors
  1. Centering, the predictor has a zero mean.
  2. Scaling, each value of the predictor
variable is divided by its standard deviation.
  3. Transformations to Resolve Skewness
     1. Replacing the data with the log, square root, or inverse may help to remove the skew.
     2. Box and Cox Transformation can be useful too. p32
        1. http://onlinestatbook.com/2/transformations/box-cox.html

![Skew formula](/skew_formula.png)

- 3.3 Data Transformations for Multiple Predictors, p33
  1. Transformations to Resolve Outliers
  2. First investigate why they are different...
  3. There are several predictive models that are resistant to outliers. Tree-based classification models create splits of the training data and the prediction equation
  4. If a model is considered to be sensitive to outliers, one data transformation that can minimize the problem is the spatial sign (Serneels et al. 2006).
  5. Data Reduction and Feature Extraction - PCA is a commonly used data reduction technique

- Dealing with Missing Values
- Removing Predictors
- Adding Predictors
- Binning Predictors
- Computing


## Chapter 4 Over-Fitting and Model Tuning

- Model Tuning
- Data Splitting
- Resampling Techniques
- Choosing Between Models

# Part II Regression Models

## Chapter 7 Nonlinear Regression Models

- Support Vector Machines
- K-Nearest Neighbors


## Chapter 8 Regression Trees and Rule-Based Models

- Boosting

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


# Part IV Other Considerations


## Chapter 18 Measuring Predictor Importance - All???


## Chapter 19 An Introduction to Feature Selection

- Consequences of Using Non-informative Predictors
- Approaches for Reducing the Number of Predictors
- Wrapper Methods
- Filter Methods
- Selection Bias


## Chapter 20 Factors That Can Affect Model Performance

- Type III Errors
- Measurement Error in the Outcome
- Measurement Error in the Predictors
- Discretizing Continuous Outcomes
- When Should You Trust Your Model’s Prediction?
- The Impact of a Large Sample



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


## The package contains tools for:

- data splitting
- pre-processing
- model tuning using resampling
- variable importance estimation
- tools for paralell processing!

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

While,

- Bayesian - Discuss the data being fixed and the model is varying around the data. The models can change given a set of data.

---

Given an example of star light measured by flux, we would approach the problem by Maximum Likelihood. ![](EML for Freq.v.Bayesian.png)
When you have multiple measurements you multiple the measurements together. ![](EML for Freq.v.Bayesian.2.png)

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

# Top 10 algorithms in data mining
* Xindong Wu et al
* Knowl Inf Syst (2008) 14:1–37; DOI 10.1007/s10115-007-0114-2

---
**POSSIBLE ALGO OUTLINE**
1. Algorithm name,
1. Brief description,
1. Pseudo-code
1. Pluses and minuses
1. Big O notation
1. R code
1. a representative publication references or further information.


### POSSIBLE USE:
1. [Patrick Winston @ ocw.mit.edu](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-034-artificial-intelligence-fall-2010/lecture-videos/)

2. [Victor Lavrenko](https://www.youtube.com/channel/UCs7alOMRnxhzfKAJ4JjZ7Wg)

3. [Siraj Raval](https://www.youtube.com/watch?v=g8D5YL6cOSE)

4. [Andrew Ng](https://www.youtube.com/channel/UC5zx8Owijmv-bbhAK6Z9apg)

5. [Big O #1](https://stats.stackexchange.com/questions/270686/supervised-machine-learning-classifiers-big-o)
    * SVM (linear and all vs rest)- O(n^3)
    * Random Forest (CART) - O (M(mn logn)) M-number of trees m-number of attributes and n-number of samples.

6. [Princeton course - Worth a read](https://www.cs.princeton.edu/courses/archive/spring14/cos511/schedule.html)

7. [Flashcards](https://github.com/Dpananos/GetCards/blob/master/Get%20Flashcards.ipynb)

---

# C4.5 / C5.0

* Born out of  ID3 (Iterative Dichotomiser 3)

* Define Dichotomy:
    * Division into two usually contradictory parts or opinions
    * (Botany) Branching characterized by successive forking into two approximately equal divisions

* C4.5 is often referred to as a statistical classifier
* Divide-and-conquer algorithm

## Pseudocode, the general algorithm for building decision trees is
    * REWORD THESE!!!!!!!!!!!
    * Check for the above base cases.
    * For each attribute a, find the normalized information gain ratio from splitting on a.
        1. Information gain or Entropy
        2. https://www.physport.org/recommendations/Entry.cfm?ID=93334
        3. Entropy is the sum of the probability of each label times the log probability of that same label - weighted mean similar to Expectation
        4. https://stackoverflow.com/questions/1859554/what-is-entropy-and-information-gain
    * Let a_best be the attribute with the highest normalized information gain.
    * Create a decision node that splits on a_best.
    * Recurse on the sublists obtained by splitting on a_best, and add those nodes as children of node.

* choose a test based on a single attribute with two or more outcomes. Make this test the root of the tree with one branch for each outcome of the test, partition S into corresponding subsets $S_1 , S_2 , . . .$ according to the outcome for each case, and apply the same procedure recursively to each subset.
* https://medium.com/@rishabhjain_22692/decision-trees-it-begins-here-93ff54ef134

- **C4.5** was superseded in 1997 by a commercial system **See5/C5.0 (or C5.0 for short)**. The
changes encompass new capabilities as well as much-improved efficiency, and include:
    * A variant of boosting [24], which constructs an ensemble of classifiers that are then voted to give a final classification. Boosting often leads to a dramatic improvement in predictive accuracy.
    * New data types (e.g., dates), “not applicable” values, variable misclassification costs, and mechanisms to pre-filter attributes.
    * Unordered rulesets—when a case is classified, all applicable rules are found and voted. This improves both the interpretability of rulesets and their predictive accuracy.
    * Greatly improved scalability of both decision trees and (particularly) rulesets. Scalability is enhanced by multi-threading; C5.0 can take advantage of computers with multiple CPUs and/or cores.

---

# k-Means,

## Description :
* k-means algorithm is a simple iterative method to partition a given dataset into a user-
specified number of clusters, k. Not to be confused with K-mediods, K nearest neighbor.
* https://en.wikipedia.org/wiki/K-means_clustering

## Pseudocode:
1. Data Assignment. Each data point is assigned to its closest centroid, with ties broken arbitrarily. This results in a partitioning of the data.
2. Relocation of “means.” Each cluster representative is relocated to the center (mean) of all data points assigned to it. If the data points come with a probability measure (weights), then the relocation is to the expectations (weighted mean) of the data partitions.
3. Reiterate through 1 and 2

## Pluses and minuses

## Big O notation

## R code

## Representative publication references and/or further information.

---

# Support vector machines - SVM

## Description :
* are considered a must try—it offers one of the most robust and accurate methods among all well-known algorithms. It has a sound theoretical foundation, requires only a dozen examples for training, and is insensitive to the number of dimensions. [Top 10 Algos in DM]
* The metric for the concept of the “best” classification function can be realized geometrically.
* [Patrick Winston](https://www.youtube.com/watch?v=_PwhiWxHK8o&t=15s)
* The “soft margin” idea is aimed at extending the SVM algorithm
* [Andrew Ng](https://www.youtube.com/watch?v=hCOIMkcsm_g)

## Pseudocode:

## Pluses and minuses - There are several important questions and related extensions on the above basic formulation of support vector machines. We list these questions and extensions below.

1. Can we understand the meaning of the SVM through a solid theoretical foundation?
2. Can we extend the SVM formulation to handle cases where we allow errors to exist,
when even the best hyperplane must admit some errors on the training data?
3. Can we extend the SVM formulation so that it works in situations where the training
data are not linearly separable?
4. Can we extend the SVM formulation so that the task is to predict numerical values or
to rank the instances in the likelihood of being a positive class member, rather than
classification?

## Big O notation

| Algorithm | Classification/Regression | Training | Prediction |
|:---------:|:-------------------------:|:--------:|:----------:|
| SVM (Kernel) | C+R | $O(n^2 p + n^3)$ | $O(n__sv__p)$ |

 Where *p* is the number of features, *n__sv__* is
 the number of support vectors

## R code

## Representative publication reference.

# Apriori, ???Do not Use / Substitute???

# EM,



# PageRank, ???Do not Use / Substitute???

# AdaBoost,

# kNN,

# Naive Bayes,

# CART


---

Caret Package for R
Max Kuhn
Developer of Caret

- https://topepo.github.io/caret/index.html
- https://www.youtube.com/watch?v=7Jbb2ItbTC4


 `caret` package (*C*lassification *A*nd *RE*gression *T*raining)

For fun See:
https://topepo.github.io/caret/models-clustered-by-tag-similarity.html


### No free lunch theorem
We have no reason to draw any inference concerning any object beyond those of which we have had experience *David Hume*

In the absence of any knowledge the prediction problem, no model can be said to be uniform better than any other.

http://no-free-lunch.org/

In other words, without prior knowledge it is very difficult to discern which model is the best.


R has ton of models but are so different for each one.

Caret creates unified interface.
Caret has 147 different models it interacts with.

jss paper: www.jstatsoft.org/v28/i05/paper

book: Applied Predictive Modeling (http://appliedpredictivemodeling.com/)


Churn dataset can be found:

```
library(c50)
data(churn)
```

`str(churnTrain)`

```
predictors <- names(churnTrain)[names(churnTrain) != "churn"]
```

This give an array of predictors only no 'churn' feature.

In caret the first level is the level of importance, this opposite from most other models.


Data Splitting: Very useful/common command!

```
set.seed(1)

inTrainingSet <- createDataPartition(allData$churn, p=0.8, list=False)

churnTrain = allData[ inTrainingSet,]
churnTest  = allData[-inTrainingSet,]
```

How does `createDataPartition` work?
- list=False return data in integers
- for 2 level split; takes the 'yes' and does 80% split and THEN takes the 'no' and does 80/20 split and combines them. Therefore all the yes and no data will be best represented in its balance or imbalanced form.
- setting seed allows you to get the same split every time/



Other functions in package:
 `createFold`, `createMultiFolds`, `creatResamples`


## Caret has many Pre-Processing methods;

`preProcess` calculations values that can be used to apply any data set for training of unknowns.

eg. centering, scaling, spatial sign transformation, PCA or ICA(independent component analysis) "signal extraction", imputation, Box-Cox transformations, etal.

eg.
```
numerics = c('value1', 'value2', 'value3')

# Determine means and sd's
procValuees <- preProcess(churnTrain[ ,numerics],
                          method = c('center', 'scale', 'YeoJohnson')

# Use predictor methods to do adjustments
TrainScaled <- predict(procValues, churnTrain[ ,numerics])
TestScaled  <- predict(procValues, churnTest[ ,numerics])
```

There is a print method to investigate what happened

```
procValues
```

- eg. Call:
- preProcesss.default(...
- Created from x samples and y variables...
- lambda estimates for Yeojohnson...


## Tuning Models:

eg take a single tree (weak Lerner) then boost to stronger learning, using weights.
eg. 'AdaBoost' algo.

In plain English: Produce a weighted set of trees then average those, the weighted averages are based the quality of each tree.


## Boost Tree Parameters:

We now have a boosting machine in R:
1. gbm in `gbm` R-package,
2. ada in `ada`  R-package,
3. blackboost in `mboost` R-package.


One can boost via:
1. number of iterations (ie trees),
2. complexity of the tree (ie number of splits)
3. learning rate (aka. shrinkage): how quickly the algo adapts, (small numbers can indicate slow learners).

One can now make a 3-d grid work of the 3 factors,
- tree depth
- learning rate
- number of trees


## `TRAIN` function in `caret`
eg

```
gbmTune <- train(x = churnTrain[, predictors],
                 y = churnTrain$churn,
                 method = 'gbm')

# OR use Formula interface:

gbmTune <- train(churn ~ .,
                 data = churnTrain,
                 method = 'gbm'
                 verbose = FALSE,
                 trControl = ctrl)
```

??? trControl @ 32:20 of talk

- verbose is not with every package but can be used to simply pass arguments back and forth.

## Repeated Cross-Validation

by default `train` uses bootstrap for resampling. However we can switch to 5 repeats of 10-fold cross-validation.


# Changing Resampling Technique using Cross-validation


```{r}
ctrl <- trainControl(method = 'repeatedcv',
                     repeats = 5)
gbmTune <- train(churn ~ .,
                 data = churnTrain,
                 verbose = FALSE,
                 trControl = ctrl)
# Sets operations to 5 reps of 10X CV.
```

## @ 33:00 **Using Different Performance Metrics**
- https://www.youtube.com/watch?v=7Jbb2ItbTC4

`twoClassSummary` function is defined in `caret` and can calculate accuracy, sensitivity, AUC/ROC, etc. See: ?train.

```{r}
ctrl <- trainControl(method = 'repeatedcv',
                     repeats = 5,
                     classProbs = TRUE,
                     summaryFunction = twoClassSummary)

gbmTune <- train(churn ~ .,
                 data = churnTrain,
                 metric = "ROC"
                 verbose = FALSE,
                 trControl = ctrl)
# Sets operations to 5 reps of 10X CV.
```


## Expanding the Search Grid
Time: 34:41


See: 5.5.2 Alternate Tuning Grids
https://topepo.github.io/caret/model-training-and-tuning.html#basic-parameter-tuning

example tree depths can be investigated from 1 to 7 deep, boosting iterations from 100 to 1000 and two different learning rates.

Create a data frame with these parameters to pass the `train`.

The column names should be the parameter name preceded by a dot.

Again See: ?train for tunable parameters for each model.

Example:

```{r}
ctrl <- trainControl(method = 'repeatedcv',
                     repeats = 5,
                     classProbs = TRUE,
                     summaryFunction = twoClassSummary)

#ADDED
grid <- expand.grid(.interaction.depth = seq(1,7, by=2),
                    .n.trees = seq(100, 1000, by=50),
                    .shrinkage = c(0.01, 0.1))

gbmTune <- train(churn ~ .,
                 data = churnTrain,
                 method = 'gbm'
                 metric = "ROC"
                 verbose = FALSE,
                 trControl = ctrl)
# Sets operations to 5 reps of 10X CV.
```



## Test expand.grid

```{r}
gbmGrid <-  expand.grid(interaction.depth = c(1, 5, 9),
                        n.trees = (1:30)*50,
                        shrinkage = 0.1,
                        n.minobsinnode = 20)

nrow(gbmGrid)
```
> 90


## Example Code from Webinar:

Entire example put together!

To run multi-cores: library(doMC)

```
library(doMC)
registerDoMC(3)

library(caret)
library(gbm)
library(pROC)
library(plyr)

library(C50)
data(churn)

predictors <- names(churnTrain)[names(churnTrain) != "churn"]

#set.seed(1)

#inTrainingSet <- createDataPartition(churn$churn, p=0.8, list=False)

#churnTrain = churn[ inTrainingSet,]
#churnTest  = churn[-inTrainingSet,]

#Does not work and gives error:
#Error: The tuning parameter grid should not have columns n.trees, interaction.depth, shrinkage, n.minobsinnode
#grid <- expand.grid(.interaction.depth = seq(1,7, by=2),
#                    .n.trees = seq(100, 1000, by=50),
#                    .shrinkage = c(0.01, 0.1))

grid <- expand.grid(.n.trees=500,
                    .interaction.depth=6,
                    .shrinkage = 0.01,
                    .n.minobsinnode = c(10))

ctrl <- trainControl(method = "repeatedcv",
                     repeats = 5,
                     classProbs = TRUE,
                     summaryFunction = twoClassSummary)

set.seed(1)
gbmTune <- train(churn ~ .,
                 data = churnTrain,
                 method = "gbm",
                 metric = "ROC",
                 tuneGrid = grid,
                 verbose = FALSE,
                 trControl = ctrl)

gbmPred = predict(gbmTune, churnTest)

gbmProbs = predict(gbmTune, churnTest, type = "prob")

grid
```

>  .n.trees .interaction.depth .shrinkage .n.minobsinnode
>1      500                  6       0.01              10

```
gbmTune
```

Stochastic Gradient Boosting

3333 samples
  19 predictors
   2 classes: 'yes', 'no'

No pre-processing
Resampling: Cross-Validated (10 fold, repeated 5 times)
Summary of sample sizes: 3000, 3000, 3000, 3000, 2999, 2999, ...
Resampling results:

  ROC        Sens       Spec     
  0.9185358  0.7226531  0.9929825

Tuning parameter 'n.trees' was held constant at a value of 500
Tuning parameter 'shrinkage' was held constant at a value of 0.01
Tuning parameter 'n.minobsinnode' was held constant at a value of 10

- https://stats.stackexchange.com/questions/30645/role-of-n-minobsinnode-parameter-of-gbm-in-r

- n.minobsinnode: number or minimum observations in a node, this the number of least obs in a given node to split.


```
gbmPred <- predict(gbmTune, churnTest)
str(gbmPred)
```

Factor w/ 2 levels "yes","no": 2 2 2 2 2 2 2 2 2 2 ...

```
gbmProbs <- predict(gbmTune, churnTest, type="prob")
str(gbmProbs)
```

'data.frame':   1667 obs. of  2 variables:
 $ yes: num  0.0385 0.0584 0.2369 0.0382 0.0328 ...
 $ no : num  0.961 0.942 0.763 0.962 0.967 ...


```
head(gbmProbs)
```
         yes        no
1 0.03853843 0.9614616
2 0.05839506 0.9416049
3 0.23690959 0.7630904
4 0.03815186 0.9618481
5 0.03278145 0.9672185
6 0.05434150 0.9456585

```
confusionMatrix(gbmPred, churnTest$churn)
```

Confusion Matrix and Statistics

          Reference
Prediction  yes   no
       yes  155    5
       no    69 1438

               Accuracy : 0.9556         
                 95% CI : (0.9446, 0.965)
    No Information Rate : 0.8656         
    P-Value [Acc > NIR] : < 2.2e-16      

                  Kappa : 0.783          
 Mcnemar's Test P-Value : 2.414e-13      

            Sensitivity : 0.69196        
            Specificity : 0.99653        
         Pos Pred Value : 0.96875        
         Neg Pred Value : 0.95421        
             Prevalence : 0.13437        
         Detection Rate : 0.09298        
   Detection Prevalence : 0.09598        
      Balanced Accuracy : 0.84425        

       'Positive' Class : yes    


```
rocCurve <- roc(response = churnTest$churn,
                predictor = gbmProbs[, "yes"],
                levels = rev(levels(churnTest$churn)))

rocCurve
```

Call:
roc.default(response = churnTest$churn, predictor = gbmProbs[,     "yes"], levels = rev(levels(churnTest$churn)))

Data: gbmProbs[, "yes"] in 1443 controls (churnTest$churn no) < 224 cases (churnTest$churn yes).
Area under the curve: 0.9269

```
plot(rocCurve)
plot(rocCurve,
     print.thres = c(0.5, 0.2), # oveerlays points at 0.5 and 0.2
     print.thres.pch = 16,
     print.thres.cex = 1.2)
```

#### SVM EXAMPLE ######################
# How to do a SVM with a Radial Bias Factor parameter

set.seed(1)
svmTune <- train(churn ~ .,
                 data = churnTrain,
                 # Tell it to fit a svm Model and tune
                 # over Cost and RBF parameter
                 method = "svmRadial",
                 # This pre-precossing will be applied to these
                 # data and the new samples too.
                 proProc = c("center", "scale"),
                 # Tune over different values of cost
                 tuneLenght = 10,
                 trControl = ctrl,
                 metric = "ROC")


Now try a flexible discrimant model               
set.seed(1)
fdaTune <- train(churn ~ .,
                 data = churnTrain,
                 # Now try a flexible discrimant model
                 # using MARS basis functions
                 method = "fda",
                 tuneLength = 10,
                 trControl = ctrl,
                 metric = "ROC")

---

Data Science at the Command Line
by Jeroen Janssens

http://datascienceatthecommandline.com

https://github.com/jeroenjanssens/data-science-at-the-command-line/issues


# Chapter 1

Why the command line is a wonderful environment for doing data science

The CLI can become part of the workstream.

The Bash command line has several nice features that can help you.

- Code completion


## Scrubbing Data

- Filtering lines
- Extracting certain columns
- Replacing values
- Extracting words
- Handling missing values
- Converting data from one format to another


## EDA

- Look at your data. When you have files that are Mb or Gb or Tb one cannot view all of the data simultaneously. You can view parts in the CLI.
- Derive statistics from your data.

## read-eval-print-loop (REPL).

- REPL is often much more convenient for doing data science than the
edit-compile-run-debug cycle associated with scripts, large programs, and, say, Hadoop jobs

The CLI can become part of the workstream.


According to an article
on Top 500 Supercomputer Sites, 95% of the top 500 supercomputers are running
GNU/Linux.
https://www.top500.org/news/lists/2013/11/press-release/

https://www.top500.org/statistics/list/

IMPORTANT:
BASH commands are so useful and important that there are usually ways to access them from inside other languages and environments, for example,
- Python 'import sys,or'
- R/RStudio 'system'


# CHAPTER 2

Ubuntu, comes with a whole bunch of command-line tools pre-installed

## More BASH:
- csvjoin
- csvsort
- csvstat
- in2csv
- json2csv
- git


## TO DO:
- Step 1: Download and Install VirtualBox. Browse to the VirtualBox (Oracle, 2014) download page
- Step 1: Download and Install Ubuntu Mate


NOTE: the Command Prompt or PowerShell in Microsoft Windows

## Executing a Command-Line Tool

- At the prompt you may see a dollar sign, this is an indicator that you are using and interactive command line.
- $ pwd


WOW, this book goes right into pipes and redirects.



# CHAPTER 3 - Obtaining Data

curl, wget, tar, gzip, head, tail, less

NOTE: Learn about Bioinfo. https://dtd.nlm.nih.gov/

Ex. https://www.ncbi.nlm.nih.gov/pmc/?term=Epigenetic+mechanism

https://isugenomics.github.io/bioinformatics-workbook/dataAcquisition/fileTransfer/sra.html

IDEA: NEED PROTEIN OR DNA TO DOWNLOAD.


## Decompressing Files p.31

```{bash}
#!/usr/bin/env bash
# unpack: Extract common file formats
# Display usage if no parameters given
Decompressing Files
|
31if [[ -z "$@" ]]; then
echo " ${0##*/} <archive> - extract common file formats)"
exit
fi
# Required program(s)
req_progs=(7z unrar unzip)
for p in ${req_progs[@]}; do
hash "$p" 2>&- || \
{ echo >&2 " Required program \"$p\" not installed."; exit 1; }
done
# Test if file exists
if [ ! -f "$@" ]; then
echo "File "$@" doesn't exist"
exit
fi
# Extract file by using extension as reference
case "$@" in
*.7z ) 7z x "$@" ;;
*.tar.bz2 ) tar xvjf "$@" ;;
*.bz2 ) bunzip2 "$@" ;;
*.deb ) ar vx "$@" ;;
*.tar.gz ) tar xvf "$@" ;;
*.gz ) gunzip "$@" ;;
*.tar ) tar xvf "$@" ;;
*.tbz2 ) tar xvjf "$@" ;;
*.tar.xz ) tar xvf "$@" ;;
*.tgz ) tar xvzf "$@" ;;
*.rar ) unrar x "$@" ;;
*.zip ) unzip "$@" ;;
*.Z ) uncompress "$@" ;;
* ) echo " Unsupported file format" ;;
esac
```

P.33 in2csv, excel to csv


P.35 curl -s http://www.gutenberg.org/cache/epub/76/pg76.txt | head -n 10


---

NOTE: Nobel Medicine prize

The Nobel Prize in Physiology or Medicine 2017

Jeffrey C. Hall, Michael Rosbash and Michael W. Young “for their discoveries of molecular mechanisms controlling the circadian rhythm”

GOTO FIRST:
https://www.nobelprize.org/prizes/lists/all-nobel-laureates-in-physiology-or-medicine/
OR
https://www.nobelprize.org/prizes/lists/all-nobel-prizes-in-chemistry/


The Nobel Prize in Chemistry 1993

“for contributions to the developments of methods within DNA-based chemistry”

Kary B. Mullis ”for his invention of the polymerase chain reaction (PCR) method”

---

# CHAPTER 4 - Creating Reusable Command-Line Tools


Converting One-Liners into Shell Scripts
In this section, we’re going to explain how to turn a one-liner into a reusable
command-line tool. Imagine that we have the following one-liner:

```
$ curl -s http://www.gutenberg.org/cache/epub/76/pg76.txt |
tr '[:upper:]' '[:lower:]' |
grep -oE '\w+' |
sort |
uniq -c |
sort -nr | # numeric, then reverse
head -n 10
```

## IMPORTANT: Regex
https://www.regular-expressions.info/posix.html


ADD HOW TO
1. Write a shell scripts, Define Shebang
2. Add Permission to Execute
3. Run a script
4. Extend Your PATH, '/home/me/scripts'

How to install from source code!


# CHAPTER 5 - Scrubbing Data p.55

- Filter lines
    - Based on location, seq -f "Line %g" 10 | tee lines
    - print the first three lines using either head , sed , or awk :

```
$ < lines head -n 3
$ < lines sed -n '1,3p'
$ < lines awk 'NR<=3'
```
    - Based on pattern, p.58
    - `grep -i chapter alice.txt`
    - Based on randomness, p.59
    - `seq 1000 | sample -r 1% | jq -c '{line: .}'`
    - seq 5 | sed -n '3,5p'
- Extract Values
    - `grep -i chapter alice.txt | cut -d' ' -f3-`
- Replacing and Deleting Values
    - `echo 'hello world!' | tr ' ' '_'`
    - `echo 'hello world!' | tr '[:lower:]' '[:upper:]'`

- Split, merge, and extract columns

    - cut
    - csvlook

- Combining Multiple CSV Files

    - Concatenate vertically p.77
    - ``< iris.csv fieldsplit -d, -k -F species -p . -s .csv`

    - cat
    - csvstack

    - Concatenate horizontally, p.79

    - Computing Descriptive Statistics



3 pieces of Advice
- Be Patient
- Be Creative
- Be Practical

---

https://www.youtube.com/watch?v=eTxyviU0Ddo

# Introduction to Python, The Scientific Libraries, Advanced Python Programming and the Pandas Section of Data and Empirics


## PYTHON BASICS 

- Quantecon
https://lectures.quantecon.org/py/ 

- Chapters 1 - 4 in this book 
https://github.com/jakevdp/PythonDataScienceHandbook

- Then this Pandas tutorial 
https://pandas.pydata.org/pandas-docs/stable/getting_started/10min.html

- Here are some excellent pandas code examples
https://github.com/wesm/pydata-book 

# MATHS 

## LINEAR ALGEBRA 

- Essence of Linear Algebra 
https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab

- Khan Academy 
https://www.khanacademy.org/math/linear-algebra

https://betterexplained.com/articles/linear-algebra-guide/

- Introduction to Methods of Applied Mathematics 
http://physics.bgu.ac.il/~gedalin/Teaching/Mater/am.pdf

## Mathematical Tools for Physics 

http://www.physics.miami.edu/~nearing/mathmethods/mathematical_methods-one.pdf

Linear Algebra Reference
- https://www.math.ubc.ca/~carrell/NB.pdf 

Reference 
- https://math.byu.edu/~klkuttle/EssentialLinearAlgebra.pdf 

## CALCULUS 

## Essence of Calculus 

https://www.youtube.com/watch?v=WUvTyaaNkzM&t=2s

https://www.khanacademy.org/math/calculus-1
https://www.khanacademy.org/math/calculus-2
https://www.khanacademy.org/math/multivariable-calculus

## PRACTICE PYTHON PROJECTS 

https://github.com/tuvtran/project-based-learning#r
https://projecteuler.net/ 

## MORE PYTHON 

Work through as many of the examples as you fancy in Chapters 6 and 7 here
- https://scipython.com/book/ 


# DATA EXPLORATION 

- https://github.com/StephenElston/ExploringDataWithPython

https://www.kaggle.com/c/titanic#desc... 

# PROBABILITY AND STATISTICS 

https://www.khanacademy.org/math/stat... 

http://greenteapress.com/thinkstats/t... 

https://bookboon.com/en/applied-stati... 

http://www.wzchen.com/probability-che... 


# STATISTICAL LEARNING 

An Introduction to Statistical Learning 

https://www-bcf.usc.edu/~gareth/ISL/i... (Essential) 

https://work.caltech.edu/telecourse.html 

- Elements of Statistical Learning (Extremely useful) 
https://web.stanford.edu/~hastie/Elem... 

# PYTHON AND DATA SCIENCE 

Chapter 5 

## Python Data Science Handbook 

https://github.com/jakevdp/PythonData... 

https://scikit-learn.org/stable/tutor... 


## DATA STRUCTURES AND ALGORITHMS IN PYTHON 

https://eu.udacity.com/course/data-st... 
http://interactivepython.org/runeston... 

## TENSORFLOW 

https://developers.google.com/machine...

## SQL 

https://www.khanacademy.org/computing... 

## GIT AND VERSION CONTROL 

- https://git-scm.com/book/en/v2 


## TAKE THIS CLASS ??

- https://cs109.github.io/2015/index.html 

# R 

- https://www.r-bloggers.com/how-to-learn-r-2/
- https://towardsdatascience.com/association-rule-mining-in-r-ddf2d044ae50
- https://shiny.rstudio.com/tutorial/


# SUPPLEMENTARY MATERIAL 

- https://docs.python.org/3/tutorial/in... 

- https://www.reddit.com/r/Python/ 

- https://www.reddit.com/r/datascience/ 

- https://stackoverflow.com/questions/t... 

- https://datascience.stackexchange.com/ 

- https://jupyter.org/ 

- How to think like a computer scientist 
http://www.openbookproject.net/thinkc... 

# WRITE A BLOG - 

https://onextrapixel.com/start-jekyll... 

# SLACK GROUPS: 

https://kagglenoobs.herokuapp.com/ 
https://datadiscourse.herokuapp.com/ 

---

Use an independent validation set and test.The usual way is to use the confusion matrix. Kappa is a good start although not perfect (See Foody's and Congalton's papers)
like those for a start:

* Congalton RG, Green K (1999) Assessing the accuracy of remotely sensed data: principles
and practices. Lewis Publishers, Boca Raton

* Congalton RG, Oderwald RG, Mead RA (1983) Assessing Landsat classiﬁcation accuracy
using discrete multivariate analysis statistical techniques. Photogramm Eng Remote
Sens 49:1671–1678

* Foody GM (1992) On the compensation for chance agreement in image classiﬁcation
accuracy assessment. Photogramm Eng Remote Sens 58:1459–1460

============
Expanding what people has already said. You have to define what is your problem. Do you wish to compare just the algorithm? Then you have to select several very different datasets to test, use repeated cross-validation and paired t-test (for example). If you have an specific problem at hand you try to select many algorithms and parametrizations and you can use also cross-validation and paired t-test. If your interest is even broadher you can compare multiple algorithms over multiple datasets using critical diagrams. All depends on the objective of your comparison. There is further description of these methods and links to articles in my thesis:

https://www.researchgate.net/publication/237145103_Data_analysis_advances_in_marine_science_for_fisheries_management_Supervised_classification_applications?ev=prf_pub

===============

Tree methods are good if;

1. You have lots of predictor variables and data.

2. Your test set values are within the range of values found within the training set (for both predictors and response). Trees tend to suck at extrapolative predictions although they have some success with panel data.

3. Suitable predictor variables are de-noised (e.g. wavelet transformation, etc).
SVM are likely better than tree methods if;

1. The dataset is smaller with less predictor variables.

2. It's a time series.

3. Extrapolative predictions are needed (opposed to interpolative predictions).

============

https://martin-thoma.com/comparing-classifiers/

================

ML packages:
 `caret`, `modelr`, `yardstick`, `rsample`, `parsnip`, `tensorflow`, `keras`, `cloudml`, and `tfestimators`.


---

# What is Machine Learning? START 040

Define: Where does the name come from and what does it produce.

## Give some basics

Explain

- Three elements of a machine learning
model

Model = Representation + Evaluation + Optimization
Domingos, P. A few useful things to know about machine learning.
Commun. ACM. 55(10):7887 (2012).

---

## Big Questions
### What is machine learning?

### Name applications of machine learning.

https://vitalflux.com/machine-learning-slides-beginners/

Machine Learning Overview

Machine Learning: An Overview: The slides present introduction to machine learning along with some of the following:

- Different types of learning (supervised, unsupervised, reinforcement)
- Dimensions of a learning system (different types of feedback, representation, use of knowledge)
- Supervised learning algorithms such as Decision tree, neural network, support vector machines (SVM), Bayesian network learning, nearest neighbor models
- Reinforcement learning
- Unsupervised learning


###. Explain 
the following machine learning areas and tasks: supervised learning, unsupervised learning, reinforcement learning, classification, regression, clustering, feature selection, feature extraction, and topic modeling.

###. Explain 
the following machine learning approaches: decision tree learning, artificial neural networks, and Bayesian networks.

### What are 
the advantages and disadvantages of the various approaches?

### Which kinds of products 
can be used for machine learning in practice?

### How to engineer a machine learning application?

### Explain precision, recall, and F-measure

### Why to separate training data set and test data set for validation?

---

- stephen wolfram - READ
https://blog.stephenwolfram.com/2017/05/machine-learning-for-middle-schoolers/

https://www.wolfram.com/language/elementary-introduction/2nd-ed/

---

- How-do-you-explain-Machine-Learning-and-Data-Mining-to-non-Computer-Science-people - READ

https://www.quora.com/How-do-you-explain-Machine-Learning-and-Data-Mining-to-non-Computer-Science-people/answer/Pararth-Shah

---

- Top 5 Algos for Bioinformatics / Data Science

1. Classification - CART: 952,000 results
2. Statistical Learning - SVM, 744,000 results
3. Association Analysis - Apriori, 144,000 results
4. Clustering - K-Means, 730,000 results
5. Bagging and Boosting - AdaBoost, 65,900 results

---


[10 Machine Learning Algorithms & R Commands](https://vitalflux.com/cheat-sheet-10-machine-learning-algorithms-r-commands/)

---


- "data mining" The phrase "data mining" is also sometimes used as a pejorative
to describe the deceptive practice of cherry-picking data to
support a theory.

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

- 35-free-online-books

https://vitalflux.com/machine-learning-list-of-35-free-online-books/

---

- Supervised learning problems vs Unsupervised

Following are two different kind of supervised learning problems which are later associated with different solution approaches:

Numerical related problems in which one predicts the quantity (represented using numbers). Algorithms such as regression, SVM, neural network, decision trees etc are used to solve these kind of problems.

Classification related problems in which one predicts classes such as yes/no, positive/negative, good/bad/ugly etc. Algorithms such as logistic regression, SVM, neural network, K-NN, decision trees etc are used to solve these kind of problems

https://vitalflux.com/top-10-solution-approaches-for-supervised-learning-problems/

---


- READ
https://medium.com/predict/three-popular-clustering-methods-and-when-to-use-

three-popular-clustering-methods-and-when-to-use-each

https://medium.com/predict/three-popular-clustering-methods-and-when-to-use-each-4227c80ba2b6?mkt_tok=eyJpIjoiWmpKaU5qZzBNVEU0TWpReCIsInQiOiJ6aDhvXC9WeFpJaTJDSEZNXC83eEtIT1NKN25OOFNaXC9uVDRhcGRrcXVEQ2gzMXBscWlaUER4azJqYkN2dGRBaVdMRUtINmRwZ1huTFFTcis3Z05qSzdGYU5BSm01VWcyM3d5eDNsSGFkQVwvSHQ4aE9LdEkyaWFFWHFTOG1FNmFDVG8ifQ%3D%3D


---

See also: http://www.deeplearningbook.org/lecture_slides.html
Deep Learning
An MIT Press book in preparation
Ian Goodfellow, Yoshua Bengio and Aaron Courville

---


- Really Interesting - Basic but very good for a sixteen yr old.
https://github.com/mjhendrickson/Learning-R/wiki

---

- https://www.datasciencecentral.com/profiles/blogs/seven-techniques-for-data-dimensionality-reduction

---

- supervised-learning-for-the-common-human
https://towardsdatascience.com/an-involved-introduction-to-supervised-learning-for-the-common-human-6338d9559748

---

- Videos for learning ML
https://www.datasciencecentral.com/profiles/blogs/neural-networks-for-machine-learning

---

A computer may be more capable than a human of finding subtle patterns in large databases, but it still needs a human to motivate the analysis and turn the result into meaningful action.

---


Q. How do you get better at formulating questions to ask your AI?

A. this is data exploration, or exploratory data analysis. You can visualize, compute statistics, like mean, min/max, variance, covariance matrix, most frequent items, run some clustering algorithms. start from some kind of requirement, i.e. a "problem" as the target for your eventual solution. one thing that will make your life easier is if you reorganize your data in ways appropriate to your hypothesis and look for preliminary patterns using some very simple techniques. (https://www.reddit.com/r/MachineLearning/comments/15mh7q/question_regression_with_many_irrelevant_variables/)

---

### USE IN ML

Predictive Modeling: Represents packages which help in working with various different predictive models (linear/multivariate/logistic regression models, SVM, neural network etc.)

caret: Stands for Classification And REgression Training. Provides a set of functions which could be used to do some of the following when working with classification and regression problems. Depends upon number of packages and loads these packages appropriately (on-demand) to achieve above objectives.

- Data processing (splitting)
- Feature selection
- Evaluate Model tuning parameters based on resampling
- Predictor variable importance estimation
- Estimate model performance from the training set

---

# Conclusion {#chapter-10-conclusion}

In this final chapter, the book comes to a close. We'll first recap what we have discussed in the previous nine chapters, and will then offer you three pieces of advice and provide some resources to further explore the related topics we touched upon. Finally, in case you have any questions, comments, or new command-line tools to share, we provide a few ways to get in touch.

## Let's Recap 

This book explored the power of employing the command line to perform data science tasks. It is an interesting observation that the challenges posed by this relatively young field can be tackled by such a time-tested technology. It is our hope that you now see what the command line is capable of. The many command-line tools offer all sorts of possibilities that are well suited to the variety of tasks encompassing data science.

There are many definitions for data science available. In [Chapter 1](#chapter-1-introduction), we introduced the OSEMN model as defined by Mason and Wiggens, because it is a very practical one that translates to very specific tasks. The acronym OSEMN stands for obtaining, scrubbing, exploring, modeling, and interpreting data. [Chapter 1](#chapter-1-introduction) also explained why the command line is very suitable for doing these data science tasks.

In [Chapter 2](#chapter-2-getting-started), we explained how you can set up your own Data Science Toolbox and install the bundle that is associated with this book. [Chapter 2](#chapter-2-getting-started) also provided an introduction to the essential tools and concepts of the command line.

The OSEMN model chapters---[Chapter 3](#chapter-3-obtaining-data) (obtaining), [Chapter 5](#chapter-5-scrubbing-data) (scrubbing), [Chapter 7](#chapter-7-exploring-data) (exploring), and [Chapter 9](#chapter-9-modeling-data) (modeling)---focused on performing those practical tasks using the command line. We haven’t devoted a chapter to the fifth step, interpreting data, because, quite frankly, the computer, let alone the command line, is of very little use here. We have, however, provided some pointers for further reading on this topic.

In the three intermezzo chapters, we looked at some broader topics of doing data science at the command line, topics which are not really specific to one particular step. In [Chapter 4](#chapter-4-creating-reusable-command-line-tools), we explained how you can turn one-liners and existing code into reusable command-line tools. In [Chapter 6](#chapter-6-managing-your-data-workflow), we described how you can manage your data workflow using a command-line tool called Drake. In [Chapter 8](#chapter-8-parallel-pipelines), we demonstrated how ordinary command-line tools and pipelines can be run in parallel using GNU Parallel. These topics can be applied at any point in your data workflow.

It is impossible to demonstrate all command-line tools that are available and relevant for doing data science. New command-line tools are created on a daily basis. As you may have come to understand by now, this book is more about the idea of using the command line, rather than giving you an exhaustive list of tools.


## Three Pieces of Advice 

You probably spent quite some time reading these chapters and perhaps also following along with the code examples. In the hope that it maximizes the return on this investment and increases the probability that you’ll continue to incorporate the command line into your data science workflow, we would like to offer you three pieces of advice: (1) be patient, (2) be creative, and (3) be practical. In the next three subsections we elaborate on each piece of advice.

### Be Patient 

The first piece of advice that we can give is to be patient. Working with data on the command line is different from using a programming language, and therefore it requires a different mindset.

Moreover, the command-line tools themselves are not without their quirks and inconsistencies. This is partly because they have been developed by many different people, over the course of multiple decades. If you ever find yourself at a loss regarding their mind-dazzling options, don’t forget to use --help, man, or your favorite search engine to learn more.

Still, especially in the beginning, it can be a frustrating experience. Trust us, you will become more proficient as you practice using the command line and its tools. The command line has been around for many decades, and will be around for many more to come. It is a worthwhile investment.

### Be Creative 

The second, related piece of advice is to be creative. The command line is very flexible. By combining the command-line tools, you can accomplish more than you might think.

We encourage you to not immediately fall back onto your programming language. And when you do have to use a programming language, think about whether the code can be generalized or reused in some way. If so, consider creating your own command-line tool with that code using the steps we discussed in [Chapter 4](#chapter-4-creating-reusable-command-line-tools). If you believe your command-line tool may be beneficial for others, you could even go one step further by making it open source.

### Be Practical 

The third piece of advice is to be practical. Being practical is related to being creative, but deserves a separate explanation. In the previous subsection, we mentioned that you should not immediately fall back to a programming language. Of course, the command line has its limits. Throughout the book, we have emphasized that the command line should be regarded as a companion approach to doing data science.

We’ve discussed four steps for doing data science at the command line. In practice, the applicability of the command line is higher for step 1 than it is for step 4. You should use whatever approach works best for the task at hand. And it’s perfectly fine to mix and match approaches at any point in your workflow. The command line is wonderful at being integrated with other approaches, programming languages, and statistical environments. There’s a certain trade-off with each approach, and part of becoming proficient at the command line is to learn when to use which.

In conclusion, when you’re patient, creative, and practical, the command line will make you a more efficient and productive data scientist.

## Where To Go From Here? 

As this book is on the intersection of the command line and data science, many related topics have only been touched upon. Now, it’s up to you to further explore these topics. The following subsections provide a list of topics and suggested resources to consult.

### APIs 

* Russell, Matthew. 2013. <em>Mining the Social Web</em>. 2nd Ed. O’Reilly Media.
* Warden, Pete. 2011. <em>Data Source Handbook</em>. O’Reilly Media.


### Shell Programming 

* Winterbottom, David. 2014. “Commandlinefu.com.” <a href="http://www.commandlinefu.com" class="uri">http://www.commandlinefu.com</a>.
* Peek, Jerry, Shelley Powers, Tim O’Reilly, and Mike Loukides. 2002. <em>Unix Power Tools</em>. 3rd Ed. O’Reilly Media.
* Goyvaerts, Jan, and Steven Levithan. 2012. <em>Regular Expressions Cookbook</em>. 2nd Ed. O’Reilly Media.
* Cooper, Mendel. 2014. “Advanced Bash-Scripting Guide.” <a href="http://www.tldp.org/LDP/abs/html" class="uri">http://www.tldp.org/LDP/abs/html</a>.
* Robbins, Arnold, and Nelson H. F. Beebe. 2005. <em>Classic Shell Scripting</em>. O’Reilly Media.


### Python, R, and SQL 

* Wickham, Hadley. 2009. <em>ggplot2: Elegant Graphics for Data Analysis</em>. Springer.
* McKinney, Wes. 2012. <em>Python for Data Analysis</em>. O’Reilly Media.
* Rossant, Cyrille. 2013. <em>Learning Ipython for Interactive Computing and Data Visualization</em>. Packt Publishing.


### Interpreting Data 

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


https://ai.googleblog.com/2017/03/assisting-pathologists-in-detecting.html
Assisting Pathologists in Detecting Cancer with Deep Learning
Friday, March 3, 2017
Posted by Martin Stumpe, Technical Lead, and Lily Peng, Product Manager


https://dev.to/swyx/medical-machine-learning-in-30-seconds-dh1

How does a beginner best spend one week of learning machine learning?
https://news.ycombinator.com/item?id=9432952


Machine Learning 101 with Paige Bailey
https://hanselminutes.com/611/machine-learning-101-with-paige-bailey


https://www.theminimalists.com/how-to-improve-writing/

---



# Clustering - K-Means

See: [[2. k-Means]]

## Intrinsically Vs  Extrinsically

* Extrinsic - helps solve another problem
* Intrinsic - helps one understand the data directly

[img width=600 [intrinsic.png]]

Checking for accuracy, etc. you may also run [[X^2|https://en.wikipedia.org/wiki/Chi-squared_test]]

---

https://www.youtube.com/watch?v=IJt62uaZR-M

* ''Unsupervised Learning'' used for prediction general patterns not like regressions that spits out a value f(x).
* Good for answering questions such as, ''how many'' in groups?, ''size of sets?, or subsets'' and possibly ''properties'' of subsets. Are there even ''outliers''?
* Can be used to discover classes, which can be useful for dimensionality reduction, hence sometimes used as a primary for a secondary classification method.
* Does not require training or testing datasets.
* A ''hard clustering'' means we have ''non-overlapping clusters'', where each instance belongs to ''one and only one cluster''. In a ''soft clustering'' method, a single individual ''can belong to multiple clusters'', often with a confidence (belief) associated with each cluster.
* K-means is thought of as polythetic, may have several ideas driving the clustering or separating the groups.
* Clusters can be ''flat'' or ''hierarchical''.
* Initial seeds (sampled randomly) from the dataset, are measured from a centroid then 2 steps run till convergence:
* Step 1: ''Data Assignment'' Each data point is assigned to its closest centroid, with ties broken arbitrarily. This results in a partitioning of the data.
* Step 2: ''Relocation of means'' Each cluster representative is relocated to the mean of all data points assigned to it. If the data points come with a probability measure (weights), then the relocation is to the expectations (weighted mean) of the data partitions.

''Model'':

Uses Geometric distance or Euclidean distance:

[img[https://wikimedia.org/api/rest_v1/media/math/render/svg/9fb2388a00fcf4f1df3117883fccd0c4028da33d]]

## O $$\propto$$ (iterations * clusters * instances * dimensions)

''Uses/Limitations'': <br>

* Differences from centroids use isotropic Gaussian covariances, bad for non-spherical (non-convex clusters) data, otherwise use relative (Shannon) entropy.

* If k is not known in advance, one will typically run k-means with different values of k, and then use a suitable criterion to select one of the results.

* Alternatively, Bisecting k-means can determine 'sometimes' the suitable number k-clusters, by first putting all the data into a single cluster, and then recursively splitting the least compact cluster into two using 2-means.

* The algorithm is sensitive to the presence of outliers.

* k-means is simple, easy to understand and "reasonably" scalable.

---

1 “kmeans” method from base R package could be used to run k-means clustering. Following is a sample command given X is a data matrix and m is the number of clusters:

```
kmeans_model <- kmeans(x = X, centers = m)
```

---

Cluster Analysis is about finding groups in data.

## Unsupervised classification

### no predefined classes

## Major Clustering Approaches

### Partitioning algorithms: Construct various partitions and then
evaluate them by some criterion
### Hierarchy algorithms: Create a hierarchical decomposition of the
set of data (or objects) using some criterion
### Density-based: based on connectivity and density functions
### Grid-based: based on a multiple-level granularity structure
### Model-based: A model is hypothesized for each of the clusters and
the idea is to find the best fit of that model to each other

## Typical applications
### As a stand-alone tool to get insight into data distribution  
### As a preprocessing step for other algorithms

## Good clustering method will produce high quality clusters with

## high intra-class similarity
## low inter-class similarity  

## usually uses distance of some sort

---

Methods:
1. K-means (Fix and Hodges, 1951) uses euclidean dist,
  * alternate - does not square mean around the centroids
  * 'PAM' Partitioning Around Medoids - https://en.wikipedia.org/wiki/Medoid

2. Gaussian mixture model (Pearson 1984)
  * good with elliptical cluster and flexible size and shapes.
  * time = 4.06
  * F(x) = simga j = 1 to k clusters (pi* N(0,1) * sigma_items in grouping(x))


3. Hierarchical methods (Florek & Perkal 1951)
  * operates on dissimilarity beteen clusters
  * can also uses euclidean dist
  * merging the most similar clusters one by one, N to N-1

  * MATH:
  * single linkage, min, usually wide spread
  * complete linkage, max ususally very compact
  * average linkage,
  time=8.11

4. Spectral Clustering (Shi & Malik, 2000)
  * Dissimilarity based on non-linear dimension reduction of K-means
  *

5. Density based methods (Ester etal 1996)
  * DBSCAN
  * will only place objects in areas of high density not low.
  *

6. BENCHMARKING & MEASURES OF QUALITY, time=12.32
  Approaches for testing
  1. Use real datasets with known clusters
    a. disadvantages - you already know the answers does not help you
  2. Simulated data from mixed distributions
  3. Real data w/o known clustes

  4. Cluster Validation Indices
    1. Average silhouette width (Kaufman & Rouseeuw 1990): compute silhouette width for every pt. then calculate an index to see if the pt is best classes in its group rather than its Neighbors grouping, returning a large number for good clusters.
    2. 'One size fits all':

    Goals my change from time to time
    1. good separation between clusters
    2. good Within cluster homogeneity (i.e. low distances)
    3. good Within cluster homogenous distribution shapes
    4. You may want a good understanding of your data via centroids.
    5. (t=22.39) You may want little loss of Information from original distance measurements bewtween Objects. May be calculated by assigning +1 between 2 pts in different clusters and 0 for 2 pts in same clusters. ????
    6. You may want regions of high cluster density within cluyster gaps
    7. Uniform cluster sizes
    8. stability


Why use Clustering?
  1. pattern recognition in images requires separation
  2.clustering for infor reduction requires good representative centroids
  3. look for 'true' classes in biological species with homogeneous distributions and different shapes.


 Test for Between Cluster Separation
   1. Distance between to two clusters by using the means but this ignores the borders.
   2. P-separation index:  average distance to the nearest pt in different clusters for p=10% of points in any cluster.
  3. Measure 'density mountains vs valleys': index that measures whether clusters correspond to 'density mountains' or 'valleys' between clusters. we want the density to go down from the modes, or we may want the cluster borders to be the valleys. Estimate density by weighted count of close pts (kernel density)
    4. within cluster average distance
	5. within-cluster similarity measure to a normal or uniform distribution.
    6. within cluster squared distance
	7. p(distance, cluster induced ndistance, Hubert's Gamma)
	8. Entropy of clusters
	9. average largest within-cluster gap
    10. Calc. variation of clustering on bootstrapped data
  Then you may prefer to Standardize all the indices to N(0,1) so that 'large is good'.

	Discussion:
	1. much of this can be implements in R::fpc
	2. IFCS Cluster Benchmarking Repo
	3. CRC, Handbook of Modern Stats Methods: Handbook of Cluster Analysis, aut. Christian Henning etal

eof


---

# Association Analysis - Apriori

;Definition of ''a priori''
    : a : deductive
    : b : relating to or derived by reasoning from self-evident propositions — compared to 'a posteriori.'
    : c : presupposed by experience

---

* This is from a major class called ''Association Rule Mining''. For finding frequent sets and association rules.  
* Association rule learning is a data mining technique for learning correlations and relations among variables in a database.

View: PseudoCode|Apriori.png

* See: https://github.com/asaini/Apriori

* http://www.rdatamining.com/examples/association-rules

* Agrawal, Rakesh, and Ramakrishnan Srikant. "Fast algorithms for mining association rules." Proc. 20th int. conf. very large data bases, VLDB. Vol. 1215. 1994.

* Apriori first scans the database and searches for most frequent itemsets (word size = 1). Accumulates item (word) count and uses arbitrary minimum cut off. By convention, Apriori assumes that items within a transaction or itemset are sorted in order of number of appearances.

* This is generally a TWO pass algo for finding frequent pairs. Basically, the first is a JOIN step followed by a prune step.


## INTERESTING IDEAS:
* use Minnesota breast cancer data, https://archive.ics.uci.edu/ml/datasets/Breast+Cancer
* http://www.cs.toronto.edu/~delve/data/splice/spliceDetail.html

* https://people.eecs.berkeley.edu/~fox/summaries/database/fast_mining.html

---

Apriori: ''apriori'' method from ''arules'' package could be used for Apriori analysis. One need to install and load “arules” package. Following is the sample command:

```
apriori_model <- apriori(as.matrix(sampleDataset), parameter = list(supp = 0.8, conf = 0.9))
```

---


# Support Vector Machines

Define: Where does the name come from and what does it produce.  

- Patrick Winston calls it the 'wide highway approach'.
- See: [Patrick Winston](https://www.youtube.com/watch?v=_PwhiWxHK8o)

Uses/Limitations:

- Data is partitioned into training and testing sets, therefore not all data can be utilized.

- Very robust and accurate method among well-known algorithms

- Can SVM handle cases where errors exist? Cases where even the best hyperplane must admit some errors on the training data?

- By introducing a "soft margin" instead of a hard boundary we can introduce a slack variable ξ,,i,, to account for the amount of a violation by the classifier which later can be minimized.

   - Soft Margin Introduced
   (https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fimage.slidesharecdn.com%2Feventclassificationpredictionusingsupportvectormachine-160405104743%2F95%2Fevent-classification-prediction-using-support-vector-machine-15-638.jpg%3Fcb%3D1459853447&f=1)

- Can SVM work in situations where the training data are not linearly separable? Yes.

- There are two ways to work with non-linear data the first is by using a non-linear decision boundary or by transforming the data in such a way as to separate the subsets by using a kernel function.

    - Kernel Function and Non-linear boundary
    (https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fimage.slidesharecdn.com%2Fsvm-140807035301-phpapp01%2F95%2Fsupport-vector-machine-without-tears-24-638.jpg%3Fcb%3D1407384107&f=1)

- Can SVM be used to predict numerical values or to rank the instances in the likelihood of being a positive class member, rather than classification?

- By extending SVM to perform regression analysis, where the goal is to produce a linear function that can approximate that target function, we can give careful consideration into the choice of the error models; supporting a support vector regression, or SVR,

- Support Vector Regression

(https://proxy.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.saedsayad.com%2Fimages%2FSVR_1.png&f=1)

- Can we scale up the algorithm for finding the maximum margin hyperplanes to thousands and millions of instances?

    - Yes, by using Core Vector machines
    - See: Tsang IW, Kwok JT, Cheung P-M (2005) Core vector machines: Fast SVM training on very large data sets. J Mach Learn Res 6:363–392

---

Support Vector Machine (SVM): “svm” method from  ''e1071'' package could be used for SVM. Note that the same package also provide method, naiveBayes, for Naive Bayes classification.  Following is the sample command given X is the matrix of features, labels be the vector of 0-1 class labels, and C being ''regularization parameter''

```{r svm, echo=TRUE}
#svm_model <- svm(x = X, y = as.factor(labels), kernel ="radial", cost=C)
# kernel - radial basis: exp(-gamma*|u-v|^2), where gamma parameter needed for all kernels except linear (default: 1/(data dimension))
# C-classification
```


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

From A.K.
https://www.svm-tutorial.com/

Then:
http://www.svms.org/history.html

Then:
http://www.svms.org/regression/SmSc98.pdf
A Tutorial on Support Vector Regression
Alex J Smola, Bernhard Scholkopf

---

## Advantages of Support Vector Machines

"The key features of SVMs are the use of kernels, the absence of local minima, the sparseness of the solution and the capacity control obtained by optimising the margin."
Shawe-Taylor and Cristianini (2004)


## Disadvantages of Support Vector Machines

"Perhaps the biggest limitation of the support vector approach lies in choice of the kernel."
Burgess (1998)

"A second limitation is speed and size, both in training and testing."
Burgess (1998)

"Discete data presents another problem..."
Burgess (1998)

"...the optimal design for multiclass SVM classifiers is a further area for research."
Burgess (1998)

"Although SVMs have good generalization performance, they can be abysmally slow in test phase, a problem addressed in (Burges, 1996; Osuna and Girosi, 1998)."
Burgess (1998)

"Besides the advantages of SVMs - from a practical point of view - they have some drawbacks. An important practical question that is not entirely solved, is the selection of the kernel function parameters - for Gaussian kernels the width parameter [sigma] - and the value of [epsilon] in the [epsilon]-insensitive loss function...[more]"
Horváth (2003) in Suykens et al.

"However, from a practical point of view perhaps the most serious problem with SVMs is the high algorithmic complexity and extensive memory requirements of the required quadratic programming in large-scale tasks."
Horváth (2003) in Suykens et al. p 392


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

A. The same may be true for "Exploratory Data Analysis", (EDA). When one obtains a data set it is important to get an intuitive feel for the numbers at hand.

1 - First approach to data  
2 - Analyzing categorical variables  
3 - Analyzing numerical variables  
4 - Analyzing numerical and categorical at the same time

---

- It is often the situation when they realize, that they have a lot of data and no ideas of what value that data can bring to their business decision making. (https://medium.com/@InDataLabs/why-start-a-data-science-project-with-exploratory-data-analysis-f90c0efcbe49)

---

Key points in a basic EDA:

* **Data types** - categorical variables, numerical variables, nominal
* **Outliers**
* Missing values
* Distributions (numerically and graphically) for both, numerical and categorical variables.
* (Steps and Key points from: https://blog.datascienceheroes.com/exploratory-data-analysis-in-r-intro/)

---

(Bioinformatics with R Cookbook by Paurush Praveen Sinha)
The key issues that must be taken care of before we start with the formulation of learning models are as follows:

- **Assessing data quality**: Correctness and completeness of data is necessary to get the model to work in the way that it is supposed to. This includes checking the consistency, the attribute values and types, the missing values, and finding the outliers.

- **Data normalization**: Depending on the input data and the chosen algorithm, sometimes we need to standardize the data in order to make it comparable. However, it might not be required in cases where the unique scaling of data is
significant. Similarly, the normalization method can be different depending on the types of features. Another important aspect is that one should first normalize the training data and then apply these normalization parameters to rescale the validation data.

- **Feature selection**: We need to get the features that show a dependency between the data instance and the objective (for example, class labels in the case of classification). Depending on the data, objective, and learning algorithm, all features might not be required to create a mode; they either add noise, redundancy, or cause computational inefficiency for the model. Therefore, we need to identify useful features that can define the objective function. For example, avoiding a redundant feature or correlated feature is a good call.

---

Jason Brownlee, PhD, says;
Simple univariate and multivariate methods that give a view on the data can be used.

For example, five methods that I would consider must have are:(https://machinelearningmastery.com/understand-problem-get-better-results-using-exploratory-data-analysis/)

- Five number summaries (mean/median, min, max, q1, q3)
- Histogram graphs
- Line Charts
- Box and Whisker plots
- Pairwise Scatterplots (scatterplot matrices)
- Lattice plots

---

1. Univariate visualization — provides summary statistics for each field in the raw data set
2. Bivariate visualization — is performed to find the relationship between each variable in the dataset and the target variable of interest
3. Multivariate visualization — is performed to understand interactions between different fields in the dataset
4. Dimensionality reduction — helps to understand the fields in the data that account for the most variance between observations and allow for the processing of a reduced volume of data.

---

Q. Why skipping Exploratory Data Analysis is a bad idea

1. generating inaccurate models;
2. generating accurate models on the wrong data;
3. choosing the wrong variables for the model;
4. inefficient use of the resources, including the rebuilding of the model.

---

Q. How do you get better at formulating questions to ask your AI?

A. this is data exploration, or exploratory data analysis. You can visualize, compute statistics, like mean, min/max, variance, covariance matrix, most frequent items, run some clustering algorithms. start from some kind of requirement, i.e. a "problem" as the target for your eventual solution. one thing that will make your life easier is if you reorganize your data in ways appropriate to your hypothesis and look for preliminary patterns using some very simple techniques. (https://www.reddit.com/r/MachineLearning/comments/15mh7q/question_regression_with_many_irrelevant_variables/)

---

Q. What do you want to know from your data?  

A. The Three Rules of Data analysis.
(https://www.statisticshowto.datasciencecentral.com/probability-and-statistics/data-analysis/)
Using three basic rules of thumb can help you avoid incorrectly making claims about your data:

1. what it is you want to know. Do you want to prove that the Earth is round? Or do you want to prove that the Earth has a circumference? Framing this question is what we call stating the **hypothesis**.

2. Estimate a **Central Tendency** for your Data. Examples of measures of central tendency are the **mean and median**. Which one you use will depend on your hypothesis in Step 1.

3. Consider the exceptions to the central tendency. If you’ve measured the average, look at the figures that are not average. is the average misleading?

---

For hypothesis testing:

- A computer may be more capable than a human of finding subtle patterns in large databases, but it still needs a human to motivate the analysis and turn the result into meaningful action.
Machine Learning with R - Second Edition
By Brett Lantz

---

Q. Do you want to learn DataFrames right now?


## Big Questions
1. What is machine learning?

2. Name applications of machine learning.

3. Explain the following machine learning areas and tasks: supervised learning, unsupervised learning, reinforcement learning, classification, regression, clustering, feature selection, feature extraction, and topic modeling.

4. Explain the following machine learning approaches: decision tree learning, artificial neural networks, and Bayesian networks.

5. What are the advantages and disadvantages of the various approaches?

6. Which kinds of products can be used for machine learning in practice?

7. How to engineer a machine learning application?

8. Explain precision, recall, and F-measure

9. Why to separate training data set and test data set for validation?

---

- stephen wolfram - READ
https://blog.stephenwolfram.com/2017/05/machine-learning-for-middle-schoolers/

https://www.wolfram.com/language/elementary-introduction/2nd-ed/

---

- How-do-you-explain-Machine-Learning-and-Data-Mining-to-non-Computer-Science-people - READ

https://www.quora.com/How-do-you-explain-Machine-Learning-and-Data-Mining-to-non-Computer-Science-people/answer/Pararth-Shah

---

- Top 5 Algos for Bioinformatics / Data Science

1. Classification - CART: 952,000 results
2. Statistical Learning - SVM, 744,000 results
3. Association Analysis - Apriori, 144,000 results
4. Clustering - K-Means, 730,000 results
5. Bagging and Boosting - AdaBoost, 65,900 results


[10 Machine Learning Algorithms & R Commands](https://vitalflux.com/cheat-sheet-10-machine-learning-algorithms-r-commands/)

8 Common Tasks:
https://vitalflux.com/7-common-machine-learning-tasks-related-methods/


---

- Really Interesting - Basic but very good for a sixteen yr old.
https://github.com/mjhendrickson/Learning-R/wiki

---

-
https://www.datasciencecentral.com/profiles/blogs/seven-techniques-for-data-dimensionality-reduction

---

- supervised-learning-for-the-common-human
https://towardsdatascience.com/an-involved-introduction-to-supervised-learning-for-the-common-human-6338d9559748

---

- Videos for learning ML
https://www.datasciencecentral.com/profiles/blogs/neural-networks-for-machine-learning

---

- "data mining"

The phrase "data mining" is also sometimes used as a pejorative
to describe the deceptive practice of cherry-picking data to
support a theory.

Data mining should be used to cherry pick data to support a theory but to first approach the data with a theory which can be tested.

---

A computer may be more capable than a human of finding subtle patterns in large databases, but it still needs a human to motivate the analysis and turn the result into meaningful action.

---

Remember: ML is good for classification of categorization, regression, dimensionality reduction, development of algorithms, discovery of genetic sequences linked to diseases

---

- Supervised learning

''Supervised learning:'' Supervised learning is a form of evidence-based learning. The evidence is the known outcome for a given input and is in turn used to train the predictive model. Models are further classified into regression and classification, based on the outcome data type. In the former, the outcome is continuous, and in the latter the outcome is discrete. Stock trading and weather forecasting are some widely used applications of regression models, and span detection, speech recognition, and image classification are some widely used applications of classification models.

Some algorithms for regression are linear regression, Generalized Linear Models (GLM), Support Vector Regression (SVR), neural networks, decision trees, and so on; in classification, we have logistic regression, Support Vector Machines (SVM), Linear discriminant analysis (LDA), Naive Bayes, nearest neighbors, and so on.

''Semi-supervised learning:'' Semi-supervised learning is a class of supervised learning using unsupervised techniques. This technique is very useful in scenarios where the cost of labeling an entire dataset is highly impractical against the cost of acquiring and analyzing unlabeled data.

''Unsupervised learning:'' As the name suggests, learning from data with no outcome (or supervision) is called unsupervised learning. It is a form of inferential learning based on hidden patterns and intrinsic groups in the given data. Its applications include market pattern recognition, genetic clustering, and so on.

*****************************

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

- Bioinformatics  Introduction

https://github.com/WilsonSayresLab/BioinformaticsIntroduction/blob/master/README.md

---

- Model assumptions
The assumptions underlying nonlinear regression models of the form specified
by Equation (1.3) are:

(1) correct mean function f
(2) variance homogeneity (homoscedasticity)
(3) normally distributed measurements errors
(4) mutually independent measurement errors ε i

---

- Most Commonly Used R Packages

Following is the list of 60 or so R packages which help take care of different aspects when working to create predictive models:

Predictive Modeling: Represents packages which help in working with various different predictive models (linear/multivariate/logistic regression models, SVM, neural network etc.)

caret: Stands for Classification And REgression Training. Provides a set of functions which could be used to do some of the following when working with classification and regression problems. Depends upon number of packages and loads these packages appropriately (on-demand) to achieve above objectives.

- Data processing (splitting)
- Feature selection
- Evaluate Model tuning parameters based on resampling
- Predictor variable importance estimation
- Estimate model performance from the training set

---

- randomForest:

Provides methods for working with classification and regression problems, based on random forests algorithm which instructs creation of large number of bootstrapped trees on random samples of variables, classifying a particular case using all of these trees in this forest, and deciding on final outcome based on average or majority voting techniques depending upon whether regression or classification problem is dealt with.

- **e1071**: Provides methods to work with regression and classification problems. Algorithms such as following are included as part of functions:

1. Support Vector Machines (SVM)
2. naïve Bayes classifier
3. Bagged clustering
4. Short time Fourier transform

stats: This is the base package which comes with base installation of R.

---

- Visualization: Represent packages used for visualization.

ggplot2: One of the best tools for data visualization, ggplot2 could be used to create plots, layer-by-layer, using data from different data sources.

knitr: An alternative tool to Sweave, Knitr provides methods for dynamic report generation.

---

- Candidates for Most Useful Algos in D.S.

http://www.cs.uvm.edu/~icdm/algorithms/CandidateList.shtml

http://www.cs.uvm.edu/~icdm/algorithms/CandidateList.shtml

---

- Classification

- C4.5

Quinlan, J. R. 1993. C4.5: Programs for Machine Learning.
Morgan Kaufmann Publishers Inc.

Google Scholar Count in October 2006: 6907

- CART

L. Breiman, J. Friedman, R. Olshen, and C. Stone. Classification and
Regression Trees. Wadsworth, Belmont, CA, 1984.

Google Scholar Count in October 2006: 6078

- 3. K Nearest Neighbors (kNN)

Hastie, T. and Tibshirani, R. 1996. Discriminant Adaptive Nearest
Neighbor Classification. IEEE Trans. Pattern
Anal. Mach. Intell. (TPAMI). 18, 6 (Jun. 1996), 607-616.
DOI= http://dx.doi.org/10.1109/34.506411

Google Scholar Count: 183

- Naive Bayes

Hand, D.J., Yu, K., 2001. Idiot's Bayes: Not So Stupid After All?
Internat. Statist. Rev. 69, 385-398.

Google Scholar Count in October 2006: 51

---

- Statistical Learning

- SVM

Vapnik, V. N. 1995. The Nature of Statistical Learning
Theory. Springer-Verlag New York, Inc.

Google Scholar Count in October 2006: 6441

- 6. EM

~McLachlan, G. and Peel, D. (2000). Finite Mixture Models.
J. Wiley, New York.

Google Scholar Count in October 2006: 848

---

- Association Analysis

- 7. Apriori

Rakesh Agrawal and Ramakrishnan Srikant. Fast Algorithms for Mining
Association Rules. In Proc. of the 20th Int'l Conference on Very Large
Databases (VLDB '94), Santiago, Chile, September 1994.
http://citeseer.comp.nus.edu.sg/agrawal94fast.html

Google Scholar Count in October 2006: 3639

- 8. FP-Tree

Han, J., Pei, J., and Yin, Y. 2000. Mining frequent patterns without
candidate generation. In Proceedings of the 2000 ACM SIGMOD
international Conference on Management of Data (Dallas, Texas, United
States, May 15 - 18, 2000). SIGMOD '00. ACM Press, New York, NY, 1-12.
DOI= http://doi.acm.org/10.1145/342009.335372

Google Scholar Count in October 2006: 1258

---

- Link Mining

- 9. ~PageRank

Brin, S. and Page, L. 1998. The anatomy of a large-scale hypertextual
Web search engine. In Proceedings of the Seventh international
Conference on World Wide Web (WWW-7) (Brisbane,
Australia). P. H. Enslow and A. Ellis, Eds. Elsevier Science
Publishers B. V., Amsterdam, The Netherlands, 107-117.
DOI= http://dx.doi.org/10.1016/S0169-7552(98)00110-X

Google Shcolar Count: 2558

- 10. HITS

Kleinberg, J. M. 1998. Authoritative sources in a hyperlinked
environment. In Proceedings of the Ninth Annual ACM-SIAM Symposium on
Discrete Algorithms (San Francisco, California, United States, January
25 - 27, 1998). Symposium on Discrete Algorithms. Society for
Industrial and Applied Mathematics, Philadelphia, PA, 668-677.

Google Shcolar Count: 2240

---

- Clustering

- 11. K-Means

~MacQueen, J. B., Some methods for classification and analysis of
multivariate observations, in Proc. 5th Berkeley Symp. Mathematical
Statistics and Probability, 1967, pp. 281-297.

Google Scholar Count in October 2006: 1579

- 12. BIRCH

Zhang, T., Ramakrishnan, R., and Livny, M. 1996. BIRCH: an efficient
data clustering method for very large databases. In Proceedings of the
1996 ACM SIGMOD international Conference on Management of Data
(Montreal, Quebec, Canada, June 04 - 06, 1996). J. Widom, Ed.
SIGMOD '96. ACM Press, New York, NY, 103-114.
DOI= http://doi.acm.org/10.1145/233269.233324

Google Scholar Count in October 2006: 853

---

- Bagging and Boosting

- 13. ~AdaBoost

Freund, Y. and Schapire, R. E. 1997. A decision-theoretic
generalization of on-line learning and an application to
boosting. J. Comput. Syst. Sci. 55, 1 (Aug. 1997), 119-139.
DOI= http://dx.doi.org/10.1006/jcss.1997.1504

Google Scholar Count in October 2006: 1576

---

- Sequential Patterns

- 14. GSP

Srikant, R. and Agrawal, R. 1996. Mining Sequential Patterns:
Generalizations and Performance Improvements. In Proceedings of the
5th international Conference on Extending Database Technology:
Advances in Database Technology (March 25 - 29, 1996). P. M. Apers,
M. Bouzeghoub, and G. Gardarin, Eds. Lecture Notes In Computer
Science, vol. 1057. Springer-Verlag, London, 3-17.

Google Scholar Count in October 2006: 596

- 15. ~PrefixSpan

J. Pei, J. Han, B. Mortazavi-Asl, H. Pinto, Q. Chen, U. Dayal and
M-C. Hsu. PrefixSpan: Mining Sequential Patterns Efficiently by
Prefix-Projected Pattern Growth. In Proceedings of the 17th
international Conference on Data Engineering (April 02 - 06,
2001). ICDE '01. IEEE Computer Society, Washington, DC.

Google Scholar Count in October 2006: 248

---

- Integrated Mining

- 16. CBA

Liu, B., Hsu, W. and Ma, Y. M. Integrating classification and
association rule mining. KDD-98, 1998, pp. 80-86.
http://citeseer.comp.nus.edu.sg/liu98integrating.html

Google Scholar Count in October 2006: 436

---

- Rough Sets

- 17. Finding reduct

Zdzislaw Pawlak, Rough Sets: Theoretical Aspects of Reasoning about
Data, Kluwer Academic Publishers, Norwell, MA, 1992

Google Scholar Count in October 2006: 329

---

- Graph Mining

- 18. gSpan

Yan, X. and Han, J. 2002. gSpan: Graph-Based Substructure Pattern
Mining. In Proceedings of the 2002 IEEE International Conference on
Data Mining (ICDM '02) (December 09 - 12, 2002). IEEE Computer
Society, Washington, DC.

Google Scholar Count in October 2006: 155

---

- 35-free-online-books

https://vitalflux.com/machine-learning-list-of-35-free-online-books/

---

- Supervised learning problems vs Unsupervised

Following are two different kind of supervised learning problems which are later associated with different solution approaches:

Numerical related problems in which one predicts the quantity (represented using numbers). Algorithms such as regression, SVM, neural network, decision trees etc are used to solve these kind of problems.

Classification related problems in which one predicts classes such as yes/no, positive/negative, good/bad/ugly etc. Algorithms such as logistic regression, SVM, neural network, K-NN, decision trees etc are used to solve these kind of problems

https://vitalflux.com/top-10-solution-approaches-for-supervised-learning-problems/

---

- READ
https://medium.com/predict/three-popular-clustering-methods-and-when-to-use-

three-popular-clustering-methods-and-when-to-use-each

https://medium.com/predict/three-popular-clustering-methods-and-when-to-use-each-4227c80ba2b6?mkt_tok=eyJpIjoiWmpKaU5qZzBNVEU0TWpReCIsInQiOiJ6aDhvXC9WeFpJaTJDSEZNXC83eEtIT1NKN25OOFNaXC9uVDRhcGRrcXVEQ2gzMXBscWlaUER4azJqYkN2dGRBaVdMRUtINmRwZ1huTFFTcis3Z05qSzdGYU5BSm01VWcyM3d5eDNsSGFkQVwvSHQ4aE9LdEkyaWFFWHFTOG1FNmFDVG8ifQ%3D%3D


---

See also: http://www.deeplearningbook.org/lecture_slides.html
Deep Learning
An MIT Press book in preparation
Ian Goodfellow, Yoshua Bengio and Aaron Courville

---

## EDA book by Roger Peng,

Chapter 5.

## Outline

Formulate your question
Read in your data
Check the packaging
Run str()
Look at the top and the bottom of your data
Check your “n”s
Validate with at least one external data source
Try the easy solution first
Challenge your solution
Follow up


[EDA](https://en.wikipedia.org/wiki/Exploratory_data_analysis)

- Formulate your question
  - Do I have the right data to answer this question?

- Read in your data
- https://en.wikibooks.org/wiki/R_Programming/Importing_and_exporting_data#Excel_.28xls.2Cxlsx.29
- readr
- data.table
- csv
- .xls|.xlsx

- Check the packaging
- dim(df)

- Run str()
- structure(df)


- Look at the top and the bottom of your data
- head
- tail

- Check your “n”s, STOPPED AT PAGE 22


- Validate YOUR data with at least one external data source
- data are at least of the right order of magnitude
- same units, are units included...
- the distribution is normal, skewed, poisson, etc.

- Try the easy solution first
- What can you glean from firsst glance.
- simple ideas, linear relationships, correlations or not
- define: Collinearity; (http://faculty.cas.usf.edu/mbrannick/regression/Collinearity.html)
- remember Stats 101 - discusssion on Indepemdemt varialbes

- Challenge your solution
- take a larger view of your data, do trends hold over time, over ppl, over other variables...

- Follow up
1. Do you have the right data?
2. Do you need other data?
3. Do you have the right question?


- Chapter 6. Principles of Analytic Graphics

See Edwrd Tufte, 'Beautiful Evidence'

Principle 1  - Data is relativea to what?
- Positive and Negative Controls
- Compared to what??

Principle 2 - Show Causality

Principle 3 - Show Multivariate data comparisons
- is there interaction (synergy) between variables

Principle 4 - can you integrate evidence in many ways to volseter your claim
- use words, graphs, tables, numbers, etc

Principle 5 - make sure to document and describe evidence with proper labels scales, sources

Prinicple 6 - Content is King
- do you have the right data for your question(s)


Chapter 7 - Exploratory Graphs

- make them quick and make lots for ideas
- for personal understanding first
- quick and dirty graphs
- using color to diff 2D from 3D and 4D

Simple Summaries: One Dimension

- Five-number summary
- Boxplots
- Barplot
- Histograms
- Density plot

Simple Summaries: Two Dimensions and Beyond

- Multiple or overlayed 1-D plots (Lattice/ggplot2)
- Scatterplots:
- Use color, size, shape to add dimensions
- interactive plots
- multiple 2-D plots


Chapter 8 - Plotting

- plot, hist, boxplot
- Lattice System p. 64
- ggplot2 System
- Output: PDF, PostScript, PNG, etc.

Good software:
https://www.youtube.com/watch?v=ma6-0PSNLHo&feature=youtu.be

---

Data mining: practical machine learning tools and techniques. 3rd ed.  
Ian H. Witten, Frank Eibe, Mark A. Hall.  
ISBN 978-0-12-374856-0(pbk.)  

MODEL TYPES

Output: Knowledge Representation  
- tables, linear models, trees, rules, instance based representations, clusters

3.3 TREES A “divide-and-conquer approach

- So far we have described decision trees that divide the data at a node by comparing the value of some attribute with a constant. This is the most common approach.

- using a hyperplane as described in the previous section results in an oblique split that is not parallel to an axis.

- A functional tree can have oblique splits as well as linear models at the leaf nodes, which are used for prediction. It is also possible for some nodes in the tree to specify alternative splits on different attributes, as though the tree designer couldn’t make up his or her mind which one to choose.

- The Weka Explorer has a User Classifier facility that allows users to construct a decision tree interactively. It presents you with a scatter plot of the data against two selected attributes, which you choose. When you find a pair of attributes that discriminates the classes well, you can create a two-way split by drawing a polygon around the appropriate data points on the scatter plot.

- (b) regression tree,
- (c) model tree.

3.4  RULES

- Rules are a popular alternative to decision trees

- The antecedent, or precondition, of a rule is a series of tests just like the tests at nodes in decision trees, while the consequent, or conclusion, gives the class or classes that apply to instances covered by that rule, or perhaps gives a probability distribution over the classes. Generally, the preconditions are logically ANDed together, and all the tests must succeed if the rule is to fire.

- We often think of the individual rules as being effectively logically ORed together: If any one applies, the class (or probability distribution) given in its conclusion is applied to the instance.

Classification Rules

- It is easy to read a set of classification rules directly off a decision tree. One rule is generated for each leaf.


- transforming a general set of rules into a tree is not quite so straightforward. A good illustration of this occurs when the rules have the same structure but different attributes, like
    - If a and b then x
    - If c and d then x

- Rules are contextual. Meaning you cannot take one rule out and apply to any circumstance in your set evaluation. The order is quite important. 
    - "rules are meant to be interpreted in order as a “decision list,”"

- Then it is necessary to break the symmetry and choose a single test for the root node. If, for example, a is chosen, the second rule must, in effect, be repeated twice in the tree, as shown in Figure 3.5. This is known as the *replicated subtree problem.*

- FIGURE 3.5: Decision tree for a simple disjunction. P.69

- Discuss Regression Trees
Because a regression line may describe several different classes over the coourse of the entire line it can also be used to our advantage

For example, a regression tree may produce:
```
if (petal-length >= 2.45 and petal-length < 5.355 and petal-width < 1.75)
   then Iris-versicolor
      except if (petal-length >= 4.95 and petal-width < 1.55)
         then Iris-virginica
```

3.5  INSTANCE-BASED REPRESENTATION p78

- simplest form of learning is plain memorization, or rote learning. Once a set of training instances has been memorized, on encountering a new instance the memory is searched for the training instance that most strongly resembles the new one.

- The problem is how to interpret the “resembles” ones.

- Just store **ALL** the instances themselves and operate by relating new instances whose class is unknown to existing ones whose class is known.

- No rules are needed, in fact no rules are used. The decision is limited by the examples that the machine was trained with. No extrapolation, no complex learning takes place. Garbage in-garbage out.

- In instance based systems the work is considered to take place on BOTH the front and back end. Meaning, that the evaluation or classification or clustering is carried out during the training. 

For example, in kmeans or nearest neighbor all the instances are kept and now new data must be compared with the previously found centroids or in the worst case all the K nearest samples must be used for voting on 'popularity'.

- drawback to instance-based representations is that they do not make explicit the structures that are learned.

**Big O of k-means:** running a fixed number i of iterations of the standard algorithm takes only **O(i*k*n*d)**, for n (d-dimensional) points, where k is the number of centroids (or clusters). This what practical implementations do (often with random restarts between the iterations). 

---

**Big O of k-NN:**
NOTE: https://stats.stackexchange.com/questions/219655/k-nn-computational-complexity
Assuming k is fixed (as both of the linked lectures do), then your algorithmic choices will determine whether your computation takes **O(nd+kn) runtime or O(ndk)** runtime. 

First, let's consider a **O(nd+kn)** runtime algorithm:
- Initialize selected_i=0 for all observations i in the training set
- For each training set observation i, compute dist_i, the distance from the new observation to training set observation i
- For j=1 to k: Loop through all training set observations, selecting the index i with the smallest dist_i value and for which selected_i=0. Select this observation by setting selected_i=1.
- Return the k selected indices.

Now, let's consider a O(ndk) runtime algorithm:
- Initialize selected_i=0

for all observations i in the training set
For j=1 to k: Loop through all training set observations and compute the distance d between the selected training set observation and the new observation. Select the index i with the smallest d value for which selected_i=0. Select this observation by setting selected_i=1.
- Return the k selected indices

- Olga Veksler, p18 
- http://www.csd.uwo.ca/courses/CS9840a/Lecture2_knn.pdf
Key:
- Basic kNN algorithm stores all examples
- Suppose we have **n** examples each of dimension **d**
- O(d)to compute distance to one examples
- O(nd) to computed distances to all examples
- Plus O(nk) time to find k closest examples 
- Total time:  O(nk+nd)
- Very expensive for a large number of samples
- But we need a large number of samples for kNN to work well!

See ALSO:  Sebastian Raschka, Assistant Professor of Statistics @ UW-Madison

---

3.6  CLUSTERS

- When a cluster rather than a classifier is learned, the output takes the form of a diagram that shows how the instances fall into clusters. In the simplest case this involves associating a cluster number with each instance.

- Certain clustering algos allows observations or instances belong to more than one grouping. This is not a problem considering this might be visualized as a intersecting subset of instances.

- hierarchical structure of clusters is used very commonly in biological circumstances. This is a central tenant of biology.

---

A Few Useful Things to Know about Machine Learning  
Pedro Domingos  
Department of Computer Science and Engineering  
University of Washington  
Seattle, WA 98195-2350, U.S.A.  
pedrod@cs.washington.edu  


Definition of Classifier:

- A classifier is a system that inputs (typically) a vector of discrete and/or continuous feature values and outputs a single discrete value, the class.

- A learner inputs a training set of examples ($x_i , y_i$), where $x_i = (x_i,1 , . . . , x_i,d )$ is an observed input and $y_i$ is the corresponding output, and outputs a classifier.

- The test of the learner is whether this classifier produces the correct output $y_t$ for future examples $x_t$ (e.g., whether the spam filter correctly classifies previously unseen emails as spam or not spam).


LEARNING = REPRESENTATION + EVALUATION + OPTIMIZATION

- The first problem facing you is the bewildering variety of learning algorithms available.

- There are literally thousands available, and hundreds more are published each year. The key to not getting lost in this huge space is to realize that it consists of combinations of just three components. The components are:

REPRESENTATION:

- A classifier must be represented in some formal language that the computer can handle. Conversely, choosing a representation for a learner is tantamount to choosing the set of classifiers that it can possibly learn. 

- This set is called the hypothesis space of the learner.

- If a classifier is not in the hypothesis space, it cannot be learned.

- It begs the question, what features to use?

EVALUATION:

- An evaluation function (also called objective function or scoring function) is needed to distinguish good classifiers from bad ones.

- The evaluation function used internally by the algorithm may differ from the external one that we want the classifier to optimize.


OPTIMIZATION:

- The choice of optimization technique is key to the efficiency of the learner, and also helps determine the classifier produced if the evaluation function has more than one optimum. It is common for new learners to start out using off-the-shelf optimizers, which are later replaced by custom-designed ones.

For example,  

- k-nearest neighbor classifies a test example by finding the k most similar training examples and predicting the majority class among them. 

- Hyperplane-based methods form a linear combination of the features per class and predict the class with the highest-valued combination. 

- Decision trees test one feature at each internal node, with one branch for each feature value, and have class predictions at the leaves.

---

SEE: TABLE: Three-components of Learning Algos.png
![Three-components of Learning Algos](Three-Components-of-Learning-Algos.png)

---

Algorithm Pseudocode: Learn D.T. (TrainSet)

1. if all examples in Training Set have the same class $y_∗$ then
    - return Make Leaf($y_∗$)

2. if No feature $x_j$ has InfoGain$(x_j ,y) > 0$ then
    - $y_∗$ ← Most frequent class in Training Set
    - return Make Leaf$(y_∗)$

3. $x_∗$ ← argmax $x_j$ InfoGain$(x_j ,y)$

4. $TS_0$ ← Examples in Training Set with $x_∗ = 0$

5. $TS_1$ ← Examples in Training Set with $x_∗ = 1$
    - return Make Node$(x_∗)$, Learn D.T. $(TS_0)$, Learn D.T.$(TS_1)$)

---

Most textbooks are organized by representation, and it’s easy to overlook the fact that the other components are equally important. There is no simple recipe for choosing each component.

- The fundamental goal of machine learning is to generalize beyond the examples in the training set.

- No matter how much data we have, it is very unlikely that we will see those exact examples again at test time.

- Doing well on the training set is easy (just memorize the examples).

- The most common mistake among machine learning beginners is to test on the training data and have the illusion of success. If the chosen classifier is then tested on new data, it is often no better than random guessing.

- HOLD back some data for more testing
- if you hire someone to build a classifier, be sure to keep some of the data to yourself and test the classifier they give you on it.

- cross-validation; this is very important

- Picture of equally divided parts which are tested and scored then the scores are analyzed by boxplot for example of mean +/- 95% C.I.

![CV diagram](CV diagram.png)

```{r}
accuracy = c(86,93,95,83,73,84,81,78,91,89)

boxplot(accuracy,
        main="Boxplot of Possible Distribution of Test Results",
        xlab="Accuracy (%)", 
        col="orange", 
        border="brown", 
        horizontal = T)
```

VERY INTERESTING

- Notice that generalization being the goal has an interesting consequence for machine learning. Unlike in most other optimization problems, we don’t have access to the function we want to optimize! We have to use training error as a surrogate for test error.

- Every learner must embody some knowledge or assumptions beyond the data it’s given in order to generalize beyond it. This was formalized by Wolpert in his famous “no free lunch” theorems, **according to which no learner can beat random guessing over all possible functions to be learned**.

- But this is alright considering we don't want to predict ALL possible values with our function just a relatively small subset.

- In fact, very general assumptions—like smoothness, similar examples having similar classes, limited dependences, or limited complexity are often enough to do very well

OVERFITTING HAS MANY FACES

- Bias and Variance
- One way to understand overfitting is by decomposing generalization error into bias and variance. Bias is a learner’s tendency to consistently learn the same wrong thing. Variance is the tendency to learn random things irrespective of the real signal.

- decision trees learned on different training sets generated by the same phenomenon are often very different, when in fact they should be the same.


---

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


Machine Learning from Podcast MLGuide


3 Steps of ML

1. infer / predict 
2. error / loss; sometime aka cost function taken from business
3. train / learn


define:
- Algorithm as software which spells out the steps for the mathematics and procedure.
- rows equal observations, n's
- columns equal Attributes or Features or Variables
- Last column is typically the Y - predictor.
- the model is the stored pattern learned the algorithm the value of numerical values is the model.
- sometimes the model is ALL the data. For example, KNN does not learn deeply. KNN learns shallowly because it does not generalize but KEEPS the original data for predicting values in the future.  It does not keep formula in the same way a regression line is the distillation of all the data points.
- 
- uses linear algebra to solve given all observations
- Features can be numerical or nominal, categorical or even binary. 
- The Y value or outcome could be also be a numerical value or a categorical or even binary too.
- the model produces the coefficients for the linear regression for example, but in machine learning it is more often called a weight.


Procedure:

1. load data
2. clean data, delete id and number of aa, set class as factor
3. further split the data into 80:20 parts, 
   - 80% training data
   - 20% testing data
4. Use training data to learn or train the model.
   - Set up training grid to tuning parameters
   - Set up cross-validation
5. Obtain times for training
6. Using Testing data set Predict classes and generate CM.
7. Compile CM output (Accuracy, MCC, etc.) for comparing 10 models.


3 Categories of Learning

1. Supervised; continuous output (1-10^6) or discrete (Class 1,2,3,4) or categorical output (yes or no)
2. Unsupervised; binning, clustering
3. Reinforcement learning; really cool

monothetic or polythetic


---

# Linda's scientific method

[slideshare](https://www.slideshare.net/PyData/random-forests-r-vs-python-linda-uruchurtu)

1. It is always a good idea to look at the data set.
2. Formulate a question
3. Formulate an Hypothesis
  - 1st Attempt - can you use an easy test using regression
  - Turn categorical into numerical values
  - Consider all features and pick machine learning algo to do job.
4. Build Model to answer your questions and test
  - If 1st attempt model leads to looking at x variables do that! 
  - Narrow down variables, dimension reduction!!


### R.F. is a black box method Breiman/Cutler

- R.F. are built with aggregated trees
- Can be used for regression or classification problems.
- They do not over fit and can handle large amounts of features
- They also output a list of features that are believed to be important in predicting variables.


#### RF Brief Description
- A tree of maximal depth is depth on a bootstrap sample of size m of the training set. There is no pruning.

- A number of m`<<`p is specified such that at each node, m variable are samples at random pout of p.  The best split of variables is used to split the node into two sub-nodes.  Using gini?

- Final classification is given by majority of the ensemble of tress in the forest.

- Only to "free" parameters: number of tress and number of variables in random subset at each node.


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

## Data Extraction & Manipulation:
   - SQL/postgreSQL
   - Preferably R or Python

## General Statistics (added by MCC, 2/3/19)
   - measures of central tendency: mean, std dev, skew, kurtosis
   - Covariance - define!
   - Correlation
   - Colinearity
   - Hypothesis Testing
   - ANOVA
   - Chi-Square Analysis
   - 'Students' T-test

## Data Pre-Processing/Exploratory Data Analysis

### Missing value treatment methods:
  - Different methods: Mean, median, K-NN imputation, regression based, etc.

### Outlier treatment methods:
  - Different methods: Replacement by quartile values, max or min, etc.
  - Cook's Distance for removal of outliers
  - https://www.mathworks.com/help/stats/cooks-distance.html

### Correlation between:
  - numerical-numerical,
  - categorical-categorical,
  - categorical-numerical variables

### Plotting:
  - base (R)
  - ggplot2 (R)
  - Matplotlib and Seaborn (Python)
  - Sound understanding of
    - Bar plot **should** be used for categorical variables and
    - Histogram should be used for continuous variables etc.
    - Box plots
    - Scatterplots
    - Scree plots

### Transformations:
  - Normalization - scaling
  - Variable transformations (e.g. x^2 -> z)
  - Sampling techniques -
    - Simple random sampling
    - Stratified sampling
    - Over/Under sampling

## Feature Selection/Extraction:
   - Near zero variance
   - Variance inflation factor (VIF)
   - Lasso regression
   - Ridge regression
   - Subset selection
   - Using Random forest

## Modeling Algorithms

### Regression:
  - Simple linear regression
  - Multiple linear regression
  - GLM with proper understanding of assumptions, multicollinearity etc
  - Goodness of fit measures such as R^2, RMSE, Adjusted-R^2, Predicted-R^2 etc
  - Lasso regression
  - Ridge regression
  - Concept of regularization
  - Concept of over-fitting and under-fitting, learning rate
  - Concept of bias and variance

### Classification
  - K-NN
  - Logistics regression with ROC/AUC curve and selection of optimal threshold
  - Decision tree
  - Concept of Bagging: Random forest
  - Support vector machine(s)
  - Baye’s classifier
  - Concept of Boosting: Xgboost, Adaboost
  - Artificial neural networks:
    - Perceptron, Multi-layer perceptron(s) (Feed forward neural networks)
  - Classification performance measures:
    - confusion matrix, accuracy, sensitivity, specificity, precision, F-measure

### Clustering:
  - K-means with fair understanding of distance and dissimilarity measures for non-numerical type of variables as well, eg. text
  - Hierarchical clustering
  - Dimensionality reduction techniques, eg. PCA

## Domain knowledge:
   - Such as how do we create features for text data, what and how are the features created in retail domain, how to extract features from image etc. It comes by working on project from different domains.

## More Resources:
  - There are lot of courses available on line on platforms like Datacamp, Coursera. 
  - “Data Science from Scratch: First Principles with Python” by Joel Grus 
  - “Introduction to statistical learning” by Tibshirani, etal.


Hope it helps !
Ankit Sharma,
Deputy Data Science Manager (R&D) at Flytxt BV (2018-present)
Updated Sep 24
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


14
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


1. Understanding Decision Trees

Decision tree learners construct a model in the form of a tree structure. The model itself comprises a serious of logical decisions, similar to a flowchart, with decision nodes that educate a decusuibnt i be nade ib ab attribute. These split into branches that indicate the decision’s choices. The tree is terminated by leaf nodes (aka terminal nodes) that denote the result of following a combination of decisions.

Data that is long to be classified being at the root node where it is passed through the various decisions in the tree according to the values of its features. The path the data takes funnels each record into a leaf node, which assigns it a predicted class.

Data that is to be classified begin in the root node where it is passed through the various decisions in the tree according to the values of its features. The path that the various decisions in the tree according to the value of its features.

2. Divide and Conquer

Decision trees are built using a heuristic called recursive partitioning. This approach is more commonly known as divide and conquer because it uses the feature values to split the data into smaller and smaller subsets of similar classes.

To elaborate on this concept, let us suppose we begin at the root node, which represents our entire dataset. The algorithm will chose a feature that is the most predictive of the target class. The examples are then partitioned into groups of distinct values of this feature; this decision forms the first set of tree branches. The algorithm continues to divide-and-conquer the nodes, choosing the best candidate feature each time until a stopping criterion is reached. This could occur if

    All, or nearly all, of the examples at the node have the same class.
    There are no more remaining features to distinguish among examples.
    The tree has grown to a predefined size limit.

Since real-world data contains more than two features, decision trees quickly become more complex than textbook examples, with many more nodes, branches, and leaves.

3. The C5.0 Decision Tree Algorithm

While there are numerous implementations of decision trees, one of the most well-known is the C5.0 algorithm. The C5.0 algorithm has become the industry standard for producing decision trees, because it does well for most types of problems directly out of the box. Compared to more advanced and sophisticated machine learning models (e.g. Neural Networks and Support Vector Machines), the decision trees under the C5.0 algorithm generally perform nearly as well but are much easier to understand and deploy.

4. Choosing the Best Split

The first main challenge that a decision tree will face is to identify which feature to split upon. If the segments of the data contain only a single class, they are considered pure.

C5.0 uses the concept of entropy for measuring purity. The entropy of a sample of data indicates how mixed the class values are; the minimum value of 0
indicates that the sample is completely homogeneous, while 1

indicates the maximum amount of disorder. The definition of entropy can be specified as

Entropy(S)= $\sum_{i=1}c − \pi log2(\pi)(1)$

In equation 1, for a given segment of data (S), the term c refers to the number of different class levels, and pi refers to the proportion of values falling into the class level i

. For example, if we suppose we have a partition of data with two classes: red (60 percent) and white (40 percent), we can calculate its entropy as

$(−0.6) × log2(0.6) − (0.4) × log2(0.4) = 0.9709506$

We can also examine the entropy for all possible two-class arrangements. If we know the proportion of examples in one class is x, then the proportion in the other class is 1−x. Below is an illustration of this arrangement

As illustrated above, the peak entropy is at $x = 0.5$, a 50-50 split results in the maximum entropy.

Given the measure of purity, the algorithm must still decide which feature to split upon. In order to do so, the algorithm uses entropy to calculate the change in homogeneity resulting from a split on each possible feature. This calculation is referred to as information gain. The information gain for a feature F
is calculated as *the differences between the entropy in the segment before the split (S1), and the partitions resulting from the split (S2). That is,

InfoGain(F) = Entropy($S_1$) − Entropy($S_2$)

One complication is that after a split, the data is divided into more than one partition. Therefore, the function to calculate Entropy(S2)

needs to consider the total entropy across all of the partitions. In accomplishes this by weighing each partition’s entropy by the proportion of records falling into that partition, which can be expressed by the following formula

Entropy(S) = $\sum_{i=1}^n Entropy(\pi)$ (3)

The higher the information gain, the better a feature is at creating homogeneous groups after a split on that feature.

5. Pruning the Decision Tree

Decision trees can continue to grow indefinitely by choosing splitting features and dividing them into smaller and smaller partitions until each example is perfectly classified, or the algorithm runs out of features to split on. However, if the tree grows overly large, many of the decisions it makes will be overly specific and the model will over-fit the training data. To overcome this, we can prune a decision tree which involves a process of reducing its size such that it generalizes better to unobserved data.

One solution to this problem is to stop the tree from growing once it reaches a certain number of decisions, or if the decision node contains only a small number of examples. This method is known as pre-pruning, or early stopping the decision tree. As the tree avoids doing unnecessary work, this can quite often be an appealing strategy.
The C5.0 Algorithm

One of the benefits of the C5.0 algorithm is that it is opinionated about pruning; it takes care of many of the decisions automatically using fairly reasonable defaults. Its overall strategy is to post-prune the tree. It does this by first growing a large tree that over-fits the training data. Afterwards, nodes and branches that have little effect on the classification errors are removed.

6. Example: Identifying Risky Loans Using the C5.0 Decision Tree

In this example, we will be using the C5.0 algorithm to determine the creditworthiness of a loan applicant.


---

http://www.datasciencecentral.com/profiles/blogs/random-forests-algorithm

one of the most popular methods or frameworks used by data scientists at the Rose Data Science Professional Practice Group is Random Forests. The Random Forests algorithm is one of the best among classification algorithms - able to classify large amounts of data with accuracy.

Random Forests are an ensemble learning method (also thought of as a form of nearest neighbor predictor) for classification and regression that construct a number of decision trees at training time and outputting the class that is the mode of the classes output by individual trees (Random Forests is a trademark of Leo Breiman and Adele Cutler for an ensemble of decision trees).

Random Forests are a combination of tree predictors where each tree depends on the values of a random vector sampled independently with the same distribution for all trees in the forest. The basic principle is that a group of “weak learners” can come together to form a “strong learner”. Random Forests are a wonderful tool for making predictions considering they do not overfit because of the law of large numbers. Introducing the right kind of randomness makes them accurate classifiers and regressors.

Single decision trees often have high variance or high bias. Random Forests attempt to mitigate the problems of high variance and high bias by averaging to find a natural balance between the two extremes. Considering that Random Forests have few parameters to tune and can be used simply with default parameter settings, they are a simple tool to use without having a model or to produce a reasonable model fast and efficiently.

Random Forests are easy to learn and use for both professionals and lay people - with little research and programming required and may be used by folks without a strong statistical background. Simply put, you can safely make more accurate predictions without most basic mistakes common to other methods.

The Random Forests algorithm was developed by Leo Breiman and Adele Cutler. Random Forests grows many classification trees. Each tree is grown as follows:

1. If the number of cases in the training set is N, sample N cases at random - but with replacement, from the original data. This sample will be the training set for growing the tree.

2. If there are M input variables, a number mM is specified such that at each node, m variables are selected at random out of the M and the best split on these m is used to split the node. The value of m is held constant during the forest growing.

3. Each tree is grown to the largest extent possible. There is no pruning.

Top Benefits of  Random Forests

    Accuracy
    Runs efficiently on large data bases
    Handles thousands of input variables without variable deletion
    Gives estimates of what variables are important in the classification
    Generates an internal unbiased estimate of the generalization error as the forest building progresses
    Provides effective methods for estimating missing data
    Maintains accuracy when a large proportion of the data are missing
    Provides methods for balancing error in class population unbalanced data sets
    Generated forests can be saved for future use on other data
    Prototypes are computed that give information about the relation between the variables and the classification.
    Computes proximities between pairs of cases that can be used in clustering, locating outliers, or (by scaling) give interesting views of the data
    Capabilities of the above can be extended to unlabeled data, leading to unsupervised clustering, data views and outlier detection
    Offers an experimental method for detecting variable interactions

---

Decision Trees are an important type of algorithm for predictive modeling machine learning.

The representation of the decision tree model is a binary tree. This is your binary tree from algorithms and data structures, nothing too fancy. Each node represents a single input variable (x) and a split point on that variable (assuming the variable is numeric).

The leaf nodes of the tree contain an output variable (y) which is used to make a prediction.  Predictions are made by walking the splits of the tree until arriving at a leaf node and output the class value at that leaf node.

Trees are fast to learn and very fast for making predictions. They are also often accurate for a broad range of problems and do not require any special preparation for your data.

---


