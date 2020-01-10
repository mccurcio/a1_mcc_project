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
