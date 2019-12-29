Top 10 algorithms in data mining



1.2 Decision trees
Given a set S of cases, C4.5 first grows an initial tree using the divide-and-conquer algorithm

- If all the cases in S belong to the same class or S is small, the tree is a leaf labeled with the most frequent class in S.
- Otherwise, choose a test based on a single attribute with two or more outcomes. 
- Make this test the root of the tree with one branch for each outcome of the test, partition S into corresponding subsets S_1, S_2, ... according to the outcome for each case, and apply the same procedure recursively to each subset.

C4.5 uses two heuristic criteria to rank possible tests: information gain, which minimizes the total entropy of the subsets {S_i} (but is heavily biased towards tests with numerous outcomes), and the default gain ratio that divides information gain by the information provided by the test outcomes.





















