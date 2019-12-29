When To Use Decision Tree Learning?

- The most commonly reason to used Decision Tree is when you realized that Naive Bayes will not satisfy your goal. Everybody knew that it is naive to seeing all features as independent variables.
- If we have categorical data, for example: hot, mild, and cold.
- If we have attribute-value pairs data, for example: 
   - an attribute ‘temperature’ may has some discrete values ‘hot’, ‘mild’, and ‘winter’.
- If objective value has discrete output values, for example ‘yes’, or ‘no’.

### The general algorithm for building decision trees is[^4]

[^4]:S.B. Kotsiantis, "Supervised Machine Learning: A Review of Classification Techniques", Informatica 31(2007) 249-268, 2007

- Check for the above base cases.
- For each attribute a, find the normalized information gain ratio from splitting on a.
- Let a_best be the attribute 
- Create a decision node that splits on a_best.
- Recurse on the sublists obtained by splitting on a_best, and add those nodes as children of node.

 https://medium.com/machine-learning-guy/an-introduction-to-decision-tree-learning-id3-algorithm-54c74eb2ad55
 
 https://www.rulequest.com/see5-info.html


 Some important features:

* See5/C5.0 has been designed to analyze substantial databases containing thousands to millions of records and tens to hundreds of numeric, time, date, or nominal fields. 

* See5/C5.0 also takes advantage of computers with up to eight cores in one or more CPUs (including  Intel Hyper-Threading) to speed up the analysis.
    * To maximize interpretability,
    
* See5/C5.0 classifiers are expressed 
    * as decision trees or sets of if-then rules, forms that are generally 
    * easier to understand than neural networks. 
    * is easy to use (easy to understand) and does not presume any special 
    * knowledge of Statistics or Machine Learning 

- ARTICLES:  https://www.rulequest.com/see5-pubs.html

C5.0 Python code: https://github.com/Bladefidz/machine-learning-tutorials/blob/master/decision-tree/decision_tree.py



### Decision Tree Learning

- There are various formulations of the decision tree learning algorithm. However this discussion only considers **ID3**.

- The optimization criterion, in this case, is the average log-likelihood: See Chapter 3; page 9; formula (5).

- contrary to the logistic regression learning algorithm which builds a parametric model by finding an optimal solution to the optimization criterion, the ID3 algorithm optimizes it approximately by constructing a **non-parametric model**.

Ex.
In the first node of the decision tree; it makes the
*SAME* prediction for ANY input.

$f_{DT}_^{S} = 1 / {S}$ * Summation of y's

- The prediction given by the above model, f_{DT}(x), would be the same for any input of x.

- decision trees such as C4.5 don't make an assumption regarding the distribution of the data, they are nonparametric. 

  -    (stackoverflow, https://stackoverflow.com/questions/13845816/are-decision-trees-e-g-c4-5-considered-nonparametric-learning)

- In other words, A distribution is not required for C4.5. You can sort all your instances by the value of your continuous attribute (y's). 

  -    (stackoverflow, https://stackoverflow.com/questions/13845816/are-decision-trees-e-g-c4-5-considered-nonparametric-learning)

- the algorithm doesn’t guarantee an optimal solution. The model can be improved by using techniques like *backtracking* during the search for the optimal decision tree at the cost of possibly taking longer to build a model.

- entropy-based split criterion intuitively makes sense: entropy reaches its minimum of 0 when all examples in S have the same label;


### C45 - C50

* Born out of  ID3 (Iterative Dichotomiser 3)

* Define Dichotomy:
    * Division into two usually contradictory parts or opinions
    * (Botany) Branching characterized by successive forking into two approximately equal divisions

* C4.5 is often referred to as a statistical classifier
* Divide-and-conquer algorithm

- Pseudocode, the general algorithm for building decision trees is
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

Tree methods are good if;

1. You have lots of predictor variables and data.

2. Your test set values are within the range of values found within the training set (for both predictors and response). Trees tend to suck at extrapolative predictions although they have some success with panel data.

3. Suitable predictor variables are de-noised (e.g. wavelet transformation, etc).
SVM are likely better than tree methods if;

1. The dataset is smaller with less predictor variables.

2. It's a time series.

3. Extrapolative predictions are needed (opposed to interpolative predictions).


### TREES A “divide-and-conquer approach


- So far we have described decision trees that divide the data at a node by comparing the value of some attribute with a constant. This is the most common approach.

- using a hyperplane as described in the previous section results in an oblique split that is not parallel to an axis.

- A functional tree can have oblique splits as well as linear models at the leaf nodes, which are used for prediction. It is also possible for some nodes in the tree to specify alternative splits on different attributes, as though the tree designer couldn’t make up his or her mind which one to choose.


 RULES

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



R.F. is a black box method Breiman/Cutler

- R.F. are built with aggregated trees
- Can be used for regression or classification problems.
- They do not over fit and can handle large amounts of features
- They also output a list of features that are believed to be important in predicting variables.

- RF Brief Description
- A tree of maximal depth is depth on a bootstrap sample of size m of the training set. There is no pruning.

- A number of m`<<`p is specified such that at each node, m variable are samples at random pout of p.  The best split of variables is used to split the node into two sub-nodes.  Using gini?

- Final classification is given by majority of the ensemble of tress in the forest.

- Only to "free" parameters: number of tress and number of variables in random subset at each node.



Understanding Decision Trees

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


















































