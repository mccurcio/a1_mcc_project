# What is Machine Learning?

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

    Different types of learning (supervised, unsupervised, reinforcement)
    Dimensions of a learning system (different types of feedback, representation, use of knowledge)
    Supervised learning algorithms such as Decision tree, neural network, support vector machines (SVM), Bayesian network learning, nearest neighbor models
    Reinforcement learning
    Unsupervised learning


###. Explain the following machine learning areas and tasks: supervised learning, unsupervised learning, reinforcement learning, classification, regression, clustering, feature selection, feature extraction, and topic modeling.

###. Explain the following machine learning approaches: decision tree learning, artificial neural networks, and Bayesian networks.

### What are the advantages and disadvantages of the various approaches?

### Which kinds of products can be used for machine learning in practice?

### How to engineer a machine learning application?

### Explain precision, recall, and F-measure


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
