# - Exploratory Data Analysis

## What is Exploratory Data Analysis?



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
