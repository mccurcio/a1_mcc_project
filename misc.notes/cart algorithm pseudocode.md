#cart algorithm pseudocode

https://machinelearningmastery.com/classification-and-regression-trees-for-machine-learning/



---



# Comparison of C5.0 & CART Classification algorithms using pruning technique

Prof. Nilima Patil,  Prof.Rekha Lathi,  Prof.Vidya Chitre

- C5.0 works by splitting based on the maximum information  gain.

- Information Gain: 
    - Let $S$ be the sample:
    - $C_{i}$ is Class $I; i = {1, 2,..., m_{I}(s1, s2, .., sm)} = -\sum \pi * log_{2}(\pi))$
    - $S_{i}$ is the number of samples in class $i, P_{i} = \frac {S_{i}} {S}, log_{2}$ is the binary logarithm
    - Let Attribute A have $v$ distinct values.
    - Entropy = $E(A) = \sum_{j=1} {\frac {(S1j + S2j + ... + Smj)} {S}} * I (s1j, ..., smj)$
    - Where $S_{ij}$ is samples in Class $i$ and subset $j$ of Attribute $A$.
    - $I * (S1j, S2j, ..., Smj)  =  -\sum (P_{ij} log2(P_{ij}))$
    - Gain(A) = $I * (s1, s2, ..., sm) - E(A)$ 



C5.0 uses Shannon's information gain

CART uses GINI index

## CART Pseudocode:

Inputs:

1. R: a set of non-target attributes, 
2. C: the target attribute, 
3. S: training data.

Output: 

1. Returns a decision tree

Start:

1. Initialize to empty tree;
2. If S is empty then 

​        Return a single node failure value

​    End 

3. If S is made only for the values of the same target then

​       Return a single node of this value

​    End 

4. if R is empty then 

​       Return a single node with value as the most common value of the target attribute values found in S

​    End 

5. Assign D ← the attribute that has the largest Gain (D, S) from all the attributes of R

6. Assign {djj = 1, 2, ..., m} ← Attribute values of D

7. ${Sj with j = 1, 2, ..., m}$ ← The subsets of S respectively constituted of $d_j$ records attribute value D

8. Return a tree whose root is D and the arcs are labeled by {d1, d2, ..., dm} and going to sub-trees ID3 (R-{D}, C, S1), ID3 (R-{D} C, S2), .., ID3 (R-{D}, C, Sm)

End







---

https://techdifferences.com/difference-between-algorithm-and-pseudocode.html

# Difference Between Algorithm and Pseudocode

### Comparison Chart

 Pseudocode

|Basis for comparison|Algorithm|Pseudocode|
|:-------------------|:--------|:---------|
|Comprehensibility   |Hard to understand |Easy to interpret |
|Uses                |Complicated programming language |Combination of programming language and natural language |
| Debugging            | Moderate                         | Simpler                                                  |
| Ease of construction | Complex                          | Easier                                                   |

### Definition of Pseudocode

**Pseudocode** is the expressive form of the algorithm  or a way to describe an algorithm. It is a combination of natural  language and high-level programming practices which represent the  fundamental concept behind a general implementation of a data structure  or algorithm. 

We can not execute pseudocode on a computer, but it models the actual programming code along with a similar level of detail.

## Key Differences Between Algorithm and Pseudocode

1. An algorithm is a definite, specific, clear sequence-wise procedure to solve a  problem. It involves the high-level language builds which cannot be  understood by a non-technical person. On the other hand, pseudocode is a more plain and human understandable form of algorithm where natural  language is also combined with the high-level programming language  constructs.
2. Pseudocode is easy to understand and interpret as compared to an algorithm.
3. The algorithm uses high-level constructs meaning the snippet of code  but the pseudocode involves natural language with high-level  programming builds.
4. Pseudocode is easily constructed and debugged relative to the algorithm.