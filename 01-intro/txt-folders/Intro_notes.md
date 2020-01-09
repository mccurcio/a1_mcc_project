- Data mining is all about extracting patterns from an organization's stored data. These patterns can be used to gain insight into aspects of the organization's operations, and to predict outcomes for future situations as an aid to decision-making. 


### Learning Algorithm Selection

1. Explainability
1. In-memory vs. out-of-memory
1. Number of features and examples
1. Categorical vs. numerical features
1. Nonlinearity of the data
1. Training speed
1. Prediction speed


### 4 Big Challenges in Machine Learning (ft. Martin Jaggi)

https://www.youtube.com/watch?v=v3QGgtmAZTE&t=0s&index=10&list=WL

Supervised Vs Unsupervised

Problem 1: The vast majority of information in the world in unlabeled so it would be advantageous to have a good Unsupervised machine learning algorithms to use.

Problem 2: Algorithms are very specialized, too specific.

Problem 3: Transfer learning to new environments

Problem 4: Scale, the scale of information is huge in reality and we have computers that work in gigabytes not the Exabytes that humans may have available to them. The scale of distributed Big Data...


### 100_page_ml_book_NOTES

Machine learning can also be defined as the process of solving a 
practical problem by

1. gathering a dataset, and
2. algorithmically building a statistical model based on that dataset. 

That statistical model is assumed to be used somehow to solve 
the practical problem.

### Supervised Learning

- dataset is the collection of labeled examples, sometimes called a predictor
- xi among N is called a feature vector
- label yi can be either an element belonging 
- to a finite set of classes {1, 2, . . . , C}, eg. {type1, type2}
- f(x1, x2, x3,...xn)= yi, {(x i , y i )}


### Unsupervised Learning

- In unsupervised learning, the dataset is a collection of 
- unlabeled examples {x i } N i=1 .
- For example, in clustering, the model returns the id of the 
- cluster for each feature vector

- How Supervised works


Any classification learning algorithm that builds a model implicitly or explicitly creates a decision boundary. A decision boundary can be straight, or curved, or it can have a complex form.

In practice, there are two other essential differentiators of learning algorithms to consider:
1. speed of model building and
2. prediction processing time.


Why the Model Works on New Data

- If training examples are selected randomly & independently using the same procedure, then, **statistically**, it is more likely that the new negative example will be located closer to negative examples.

- For less likely situations, our model will make errors, because these situations are run across less often.

*HOW TO REPHRASE:* The number of errors will more likely be smaller than the number of correct predictions.

So it tends to reason that the larger the dataset the larger are the chances of describing all or most of the probable outcomes that one would encounter.


### "Probably approximately correct" learning theory by Leslie Valiant

- We cannot expect a learner to learn a concept exactly. There are only a small fraction of examples that describe our available instance/experimental space. It may be very difficult to describe the entire space with a small set.

- Cannot always expect to learn a close approximation to the target concept, the training set will not be representative of your model. It will may/contain uncommon examples.

- The only realistic expectation of a good learner is that with high probability it will learn a close approximation to the target concept/model.

- The only reason we can hope for this is the *consistent distribution assumption*.


### Parameters vs. Hyperparameters

- A hyperparameter is a property of a learning algorithm, usually (but not always) having a numerical value. That value influences the way the algorithm works. Hyperparameters aren’t learned by the algorithm itself from data. They have to be set by the data analyst before running the algorithm.

### Classification vs. Regression

- **Classification** is the problem of trying to assign a label to a previously unlabeled example.

- the classification problem is solved by usually using a collection of examples/objects *already* labeled and producing a model that can NOW take unlabeled samples and label them with the information at hand.

- Is the labeled set binary? {0, 1}
or
- Multi-class (3 or more labels or classifications)

- **Regression** is the problem of predicting a real-value label (often called a target) given an unlabeled example.

- The regression problem is solved by a regression learning algorithm that takes a collection of labeled examples as inputs and produces a model that can *then* take an unlabeled example as a new input and output a target value.


### Model-Based vs. Instance-Based Learning

**DEFINE: Instance-Based Learning**

1. Model-based learning algorithms use the training data to create a model that has parameters learned from the training data. In SVM, the two parameters we saw were w`*` and b`*`.

2. Instance-based learning algorithms use the whole dataset as the model. k-Nearest Neighbors (kNN) is very common.

### Shallow vs. Deep Learning

GET GOOD DEFINITION!!!



### Parametric Approach to Dimension Reduction, Feature Reduction/Selection

Forward Selection Method Approach
- Add a new Dimension one at a time then look at goodness of fit and error statistics. if the feature is good keep it else remove it from the model.
- add new dim if error is low and the goodness of fit goes up, could use BIC of AIC.
- good for RF: logistic regression, neural network, SVM.

Backward Selection Method
- one variable at at time is deleted and the model goodness of fit is compared.

if the deletion of a feature reduces error and the goodness of fit increases that then the variable is dropped else it is kept.

- More can be found Book: The comparisons of data mining techniques for the predictive accuracy of probability of default credit card clients, Expert Systems with Application, 

Yeh & Lien 2009,  36(2), 2473-2480

Dimensionality Reduction Methods Include:
1. PCA
2. SVD
3. Iterative feature Selection method(s?)

- Dim Reduction Techniques
1. Parametric or model based
  - PCA
  - Forward feature selection
  - Backward feature selection
  - Parametric methods, like iterative feature selection

Too many variables may be detrimental. For example, if there are actually thirty D that effect sales but the company cannot control all of them (such as weather) then it may not be worth trying to model them.  

By reducing Dimensions it can also save space and cost.

Highly correlated variables mean redundant data.


### Dealing with Missing Values

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


### Removing Predictors

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



# Topics Useful to ME:

##  Data Pre-processing, p27

- Data Transformations for Individual Predictors  
  1. Centering, the predictor has a zero mean.
  2. Scaling, each value of the predictor
variable is divided by its standard deviation.
  3. Transformations to Resolve Skewness
     1. Replacing the data with the log, square root, or inverse may help to remove the skew.
     2. Box and Cox Transformation can be useful too. p32
        1. http://onlinestatbook.com/2/transformations/box-cox.html

Skew formula

Data Transformations for Multiple Predictors, p33  

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


### Chapter 20 Factors That Can Affect Model Performance

- Type III Errors
- Measurement Error in the Outcome
- Measurement Error in the Predictors
- Discretizing Continuous Outcomes
- When Should You Trust Your Model’s Prediction?
- The Impact of a Large Sample


#### Three Pieces of Advice  (1) be patient, (2) be creative, and (3) be practical.

 Supervised learning problems vs Unsupervised

Following are two different kind of supervised learning problems which are later associated with different solution approaches:

Numerical related problems in which one predicts the quantity (represented using numbers). Algorithms such as regression, SVM, neural network, decision trees etc are used to solve these kind of problems.

Classification related problems in which one predicts classes such as yes/no, positive/negative, good/bad/ugly etc. Algorithms such as logistic regression, SVM, neural network, K-NN, decision trees etc are used to solve these kind of problems



No matter how much data we have, it is very unlikely that we will see those exact examples again at test time.

Doing well on the training set is easy (just memorize the examples).

- cross-validation; this is very important



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

At the intersection between Statistics and Computer Science there is a portion outside of Bioinformatics. This intersecting area is where the field of Machine Learning or Predictive Modeling resides. 

Machine Learning, Predictive Modeling, Artificial Intelligence and even intelligent machines are all synonyms for pretty much the same tool(s). I plan to use the Machine Learning or Predictive Modeling interchangeably. The technology boils down to the use of mathematics, specifically statistics coupled with computer science. 

This booklet will discuss ?supertwo of the most commonly studied facets of machine learning, Supervised and Unsupervised learning approaches.  

- Definitions:

1. **Supervised learning** is used whenever we want to predict a certain
outcome from a given input, and we have examples of input/output pairs.
2. In **unsupervised learning**, the learning algorithm is just shown the input data
and asked to extract knowledge from this data.[^1]

[^1]:Introduction to Machine Learning with Python (2017), Andreas C. Müller & Sarah Guido, O'Reilly press, 2017

A second set of definitions might be helpful although from an different view.

1. Supervised learning is the machine learning task of learning a function that maps an input to an output based on example input-output pairs.[^2] The algorithm determines a pattern from the input information and groups this with its title or classification. It may also produce regression lines or models that can be used for predictions.

[^2]:Stuart J. Russell, Peter Norvig (2010) Artificial Intelligence: A Modern Approach, Third Edition, Prentice Hall




- Supervised learning  

**Input:**  

1. (X, Y) is a **labeled pair** 

Where:

- $\langle X \rangle ~~ is~ a~ matrix(m,n)~ \in \mathbb{R}^n$,

- $\langle Y \rangle  ~~ is~ a~ matrix(m,1),~~~ label~y_i \in \{1, 2, 3, ...,C\}~~$

**Output:**  

$f(x_i, x_j, ... ~| Y) = Classification(s)$ 

OR 

$f(x_i, x_j, ... ~| Y) = Regression ~model(s)$

- Unsupervised learning

**Input:**  

1. (X) is a **unlabeled data**,    
    
Where:

$\langle X \rangle ~~ is~ a~ matrix(m,n)~ \in \mathbb{R}^n$  

**Output:**  

$f(x_i, x_j, ...) = Classification(s)$, 

OR

$f(x_i, x_j, ...) = Regression ~model(s)$  



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


### monothetic or polythetic



  - Turn categorical into numerical values
  - Consider all features and pick machine learning algo to do job.



### Modeling Algorithms

- Regression:
  - Simple linear regression
  - Multiple linear regression
  - GLM with proper understanding of assumptions, multicollinearity etc
  - Goodness of fit measures such as R^2, RMSE, Adjusted-R^2, Predicted-R^2 etc
  - Lasso regression
  - Ridge regression
  - Concept of regularization
  - Concept of over-fitting and under-fitting, learning rate
  - Concept of bias and variance

- Classification
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

- Clustering:
  - K-means with fair understanding of distance and dissimilarity measures for non-numerical type of variables as well, eg. text
  - Hierarchical clustering
  - Dimensionality reduction techniques, eg. PCA













