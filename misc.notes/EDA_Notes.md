
## Scrubbing Data

- Filtering lines
- Extracting certain columns
- Replacing values
- Extracting words
- Handling missing values
- Converting data from one format to another

### EDA

- Look at your data. When you have files that are Mb or Gb or Tb one cannot view all of the data simultaneously. You can view parts in the CLI.
- Derive statistics from your data.

(EDA). When one obtains a data set it is important to get an intuitive feel for the numbers at hand.

1 - First approach to data
2 - Analyzing categorical variables
3 - Analyzing numerical variables
4 - Analyzing numerical and categorical at the same time


Key points in a basic EDA:

* **Data types** - categorical variables, numerical variables, nominal
* **Outliers**
* Missing values
* Distributions (numerically and graphically) for both, numerical and categorical variables.
* (Steps and Key points from: https://blog.datascienceheroes.com/exploratory-data-analysis-in-r-intro/)


 **Assessing data quality**: Correctness and completeness of data is necessary to get the model to work in the way that it is supposed to. This includes checking the consistency, the attribute values and types, the missing values, and finding the outliers.

- **Data normalization**: Depending on the input data and the chosen algorithm, sometimes we need to standardize the data in order to make it comparable. However, it might not be required in cases where the unique scaling of data is
significant. Similarly, the normalization method can be different depending on the types of features. Another important aspect is that one should first normalize the training data and then apply these normalization parameters to rescale the validation data.

- **Feature selection**: We need to get the features that show a dependency between the data instance and the objective (for example, class labels in the case of classification). Depending on the data, objective, and learning algorithm, all features might not be required to create a mode; they either add noise, redundancy, or cause computational inefficiency for the model. Therefore, we need to identify useful features that can define the objective function. For example, avoiding a redundant feature or correlated feature is a good call.


- Five number summaries (mean/median, min, max, q1, q3)
- Histogram graphs
- Line Charts
- Box and Whisker plots
- Pairwise Scatterplots (scatterplot matrices)
- Lattice plots

1. Univariate visualization — provides summary statistics for each field in the raw data set
2. Bivariate visualization — is performed to find the relationship between each variable in the dataset and the target variable of interest
3. Multivariate visualization is performed to understand interactions between different fields in the dataset


- The Three Rules of Data analysis.
(https://www.statisticshowto.datasciencecentral.com/probability-and-statistics/data-analysis/)
Using three basic rules of thumb can help you avoid incorrectly making claims about your data:

1. what it is you want to know. Do you want to prove that the Earth is round? Or do you want to prove that the Earth has a circumference? Framing this question is what we call stating the **hypothesis**.

2. Estimate a **Central Tendency** for your Data. Examples of measures of central tendency are the **mean and median**. Which one you use will depend on your hypothesis in Step 1.

3. Consider the exceptions to the central tendency. If you’ve measured the average, look at the figures that are not average. is the average misleading?


https://www.datasciencecentral.com/profiles/blogs/seven-techniques-for-data-dimensionality-reduction


- Turn categorical into numerical values
- Consider all features and pick machine learning algo to do job.


### Data Pre-Processing/Exploratory Data Analysis

- Missing value treatment methods:
- Different methods: Mean, median, K-NN imputation, regression based, etc.

- Outlier treatment methods:
  - Different methods: Replacement by quartile values, max or min, etc.
  - Cook's Distance for removal of outliers
  - https://www.mathworks.com/help/stats/cooks-distance.html

- Correlation between:
  - numerical-numerical,
  - categorical-categorical,
  - categorical-numerical variables



- Transformations:
  - Normalization - scaling
  - Variable transformations (e.g. x^2 -> z)
  - Sampling techniques -
    - Simple random sampling
    - Stratified sampling
    - Over/Under sampling

#### Feature Selection/Extraction:
   - Near zero variance
   - Variance inflation factor (VIF)
   - Lasso regression
   - Ridge regression
   - Subset selection
   - Using Random forest

#### Introduction to PCA

- Two main goals of dimensionality reduction
        find structure in features
        aid in visualization
- PCA has 3 goals
        find a linear combination of variables to create principle components
        maintain as much variance in the data as possible
        principal components are uncorrelated (i.e. orthogonal to each other)
    intuition
        with an x y correlation scatter plot, the best 1 dimension to explain the variance in the data is the linear regression line
        this is the first principal component
        then the distance of the points from the line is the component score (I don’t really understand this part, but I get how the line is simple way to explain the two dimensional data and explains most of the variation in the data.)

Example: Principle components with iris dataset

    center and scale - for each point, subtract the mean and divide by the sd
    the summary of the model shows you the proportion of variance explained by each principal component
    I think the rotation is the distance of the point from each principal component or something like that.


