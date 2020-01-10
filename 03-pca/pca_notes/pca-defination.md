PCA 

Definaition from Mintab:


Principal Component Analysis (PCA): an Unsupervised learning***

Principal component analysis (PCA) is a statistical procedure that uses an orthogonal transformation to convert a set of observations of possibly correlated variables into a set of values of linearly uncorrelated variables called principal components.

The number of principal components is less than or equal to the number of original variables. This transformation is defined in such a way that the first principal component has the largest possible variance (that is, accounts for as much of the variability in the data as possible), and each succeeding component in turn has the highest variance possible under the constraint that it is orthogonal to the preceding components.

The resulting vectors are an uncorrelated orthogonal basis set. PCA is sensitive to the relative scaling of the original variables.

Principal components analysis is a procedure for identifying a smaller number of uncorrelated variables, called “principal components”, from a large set of data. The goal of principal components analysis is to explain the maximum amount of variance with the fewest number of principal components. Principal components analysis is commonly used in the social sciences, market research, and other industries that use large data sets.

Principal components analysis is commonly used as one step in a series of analyses. You can use principal components analysis to reduce the number of variables and avoid multicollinearity, or when you have too many predictors relative to the number of observations.

Example: A consumer products company wants to analyze customer responses to several characteristics of a new shampoo: color, smell, texture, cleanliness, shine, volume, amount needed to lather, and price. They perform a principal components analysis to determine whether they can form a smaller number of uncorrelated variables that are easier to interpret and analyze. The results identify the following patterns:

Color, smell, and texture form a “Shampoo quality” component.

Cleanliness, shine, and volume form an “Effect on hair” component. Amount needed to lather and price form a “Value” component.

Minitab.comLicense PortalStoreBlogCon


---


In machine learning and statistics, dimensionality reduction or dimension reduction is the process of reducing the number of random variables under consideration,[1] via obtaining a set of principal variables. It can be divided into feature selection and feature extraction.[2]

Feature selection:

Feature selection approaches try to find a subset of the original variables (also called features or attributes). There are three strategies; filter (e.g. information gain) and wrapper (e.g. search guided by accuracy) approaches, and embedded (features are selected to add or be removed while building the model based on the prediction errors). See also combinatorial optimization problems.

In some cases, data analysis such as regression or classification can be done in the reduced space more accurately than in the original space.

Feature extraction:

Feature extraction transforms the data in the high-dimensional space to a space of fewer dimensions. The data transformation may be linear, as in principal component analysis (PCA), but many nonlinear dimensionality reduction techniques also exist.[3][4] For multidimensional data, tensor representation can be used in dimensionality reduction through multilinear subspace learning.[5]

Advantages of dimensionality reduction

It reduces the time and storage space required.
Removal of multi-collinearity improves the performance of the machine learning model.
It becomes easier to visualize the data when reduced to very low dimensions such as 2D or 3D.

## PCA is mostly used as a tool in exploratory data analysis and for making predictive models.

## PCA can be done by eigenvalue decomposition of a data covariance (or correlation) matrix or singular value decomposition of a data matrix, usually after mean centering (and normalizing or using Z-scores) the data matrix for each attribute.

The results of a PCA are usually discussed in terms of component scores, sometimes called factor scores (the transformed variable values corresponding to a particular data point), and loadings (the weight by which each standardized original variable should be multiplied to get the component score).

PCA is the simplest of the true eigenvector-based multivariate analyses. Often, its operation can be thought of as revealing the internal structure of the data in a way that best explains the variance in the data. If a multivariate dataset is visualised as a set of coordinates in a high-dimensional data space (1 axis per variable), PCA can supply the user with a lower-dimensional picture, a projection or “shadow” of this object when viewed from its (in some sense; see below) most informative viewpoint. This is done by using only the first few principal components so that the dimensionality of the transformed data is reduced.

PCA is closely related to factor analysis. Factor analysis typically incorporates more domain specific assumptions about the underlying structure and solves eigenvectors of a slightly different matrix.

PCA is also related to canonical correlation analysis (CCA). CCA defines coordinate systems that optimally describe the cross-covariance between two datasets while PCA defines a new orthogonal coordinate system that optimally describes variance in a single dataset.





























