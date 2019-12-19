http://www.datasciencecentral.com/profiles/blogs/random-forests-algorithm

one of the most popular methods or frameworks used by data scientists at the Rose Data Science Professional Practice Group is Random Forests. The Random Forests algorithm is one of the best among classification algorithms - able to classify large amounts of data with accuracy.

Random Forests are an ensemble learning method (also thought of as a form of nearest neighbor predictor) for classification and regression that construct a number of decision trees at training time and outputting the class that is the mode of the classes output by individual trees (Random Forests is a trademark of Leo Breiman and Adele Cutler for an ensemble of decision trees).

Random Forests are a combination of tree predictors where each tree depends on the values of a random vector sampled independently with the same distribution for all trees in the forest. The basic principle is that a group of “weak learners” can come together to form a “strong learner”. Random Forests are a wonderful tool for making predictions considering they do not overfit because of the law of large numbers. Introducing the right kind of randomness makes them accurate classifiers and regressors.

Single decision trees often have high variance or high bias. Random Forests attempts to mitigate the problems of high variance and high bias by averaging to find a natural balance between the two extremes. Considering that Random Forests have few parameters to tune and can be used simply with default parameter settings, they are a simple tool to use without having a model or to produce a reasonable model fast and efficiently.

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


