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








