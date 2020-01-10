- SVM 

- The dataset has two multi-dimensional spaces that may be separated by a decision boundary.  
- If the example is 2D then think of the boundary being the widest highway 
- that will separate the two groups.
- wx - b = 0, where wx = {w1x1 + w2x2 + ... wnxn}, if we consider the 
- predictor to be {-1, +1}, then we can see that separation will occur 
- in the situation, y = sign_(label)(wx - b)

Therefore:  
- `wx i - b >= 1 if y i = +1`  OR  
- `wx_i - b < 1  if y i = ≠1`

- The hyperplane must be one less dimension than the dataset, 
    - for example, in a 3D space the hyperplane is a 2D plane - very similar to the $y = mx+b$ that we learned in grade school.


- How many training examples do you have in your dataset? How many features does each example have? 

- Some algorithms, including neural networks and gradient boosting (we consider both later), can handle a huge number of examples and millions of features. Others, like SVM, can be very modest in their capacity.



###  Support Vector Machine

- 
- Two critical questions answered here;
1. What if there’s noise in the data and no hyperplane can perfectly separate positive examples from negative ones? **Penalties**
2. What if the data cannot be separated using a plane, but could be separated by a higher-order polynomial? **Yes**


### Dealing with Noise

- To extend SVM to cases in which the data is not linearly separable, we introduce the hinge loss function: max (0, 1 - y_i_ (wx_i_ - b)).

- SVMs that optimize hinge loss are called **soft-margin** SVMs, while the original formulation is referred to as a **hard-margin** SVM.

- Define Soft and Hard Margin Boundaries:

### Pluses and minuses - There are several important questions and related extensions on the above basic formulation of support vector machines. We list these questions and extensions below.

1. Can we understand the meaning of the SVM through a solid theoretical foundation?
2. Can we extend the SVM formulation to handle cases where we allow errors to exist,
when even the best hyperplane must admit some errors on the training data?
3. Can we extend the SVM formulation so that it works in situations where the training
data are not linearly separable?
4. Can we extend the SVM formulation so that the task is to predict numerical values or
to rank the instances in the likelihood of being a positive class member, rather than
classification?

## Big O notation

|  Algorithm   |     Training     |  Prediction   |
| :----------: | :--------------: | :-----------: |
| SVM (Kernel) | $O(n^2 p + n^3)$ | $O(n__sv__p)$ |

 Where *p* is the number of features, *n__sv__* is
 the number of support vectors
 
 
 - SVM EXAMPLE 
# How to do a SVM with a Radial Bias Factor parameter


 
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

https://proxy.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.saedsayad.com%2Fimages%2FSVR_1.png&f=1

- Can we scale up the algorithm for finding the maximum margin hyperplanes to thousands and millions of instances?

    - Yes, by using Core Vector machines
    - See: Tsang IW, Kwok JT, Cheung P-M (2005) Core vector machines: Fast SVM training on very large data sets. J Mach Learn Res 6:363–392

---

Support Vector Machine (SVM): "svm" method from  "e1071" package could be used for SVM. Note that the same package also provide method, naiveBayes, for Naive Bayes classification.  Following is the sample command given X is the matrix of features, labels be the vector of 0-1 class labels, and C being "regularization parameter"

```{r svm, echo=TRUE}
#svm_model <- svm(x = X, y = as.factor(labels), kernel = "radial", cost = C)
# kernel - radial basis: exp(-gamma*|u-v|^2), where gamma parameter needed for all kernels except linear (default: 1/(data dimension))
# C-classification
```
 
 
 
From A.K.
https://www.svm-tutorial.com/

Then:
http://www.svms.org/history.html

Then:
http://www.svms.org/regression/SmSc98.pdf
A Tutorial on Support Vector Regression
Alex J Smola, Bernhard Scholkopf
 
 
 
### Advantages of Support Vector Machines

"The key features of SVMs are the use of kernels, the absence of local minima, the sparseness of the solution and the capacity control obtained by optimising the margin."
Shawe-Taylor and Cristianini (2004)


### Disadvantages of Support Vector Machines

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
Horvath (2003) in Suykens et al.

"However, from a practical point of view perhaps the most serious problem with SVMs is the high algorithmic complexity and extensive memory requirements of the required quadratic programming in large-scale tasks."
Horvath (2003) in Suykens et al. p 392


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

