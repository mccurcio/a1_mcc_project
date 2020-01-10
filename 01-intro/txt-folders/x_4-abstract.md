# Abstract

Nine machine learning methods (both supervised and unsupervised) have been introduced in 'Top 10 Algorithms In Data Mining' by X. Wu etal, 2008.[^1] Unfortunately, there are no easy rules to follow for which models to use in all situations. The comically named *No Free Lunch Theorems for Optimization*  "demonstrates the danger of comparing [general-purpose] algorithms by their performance on a small sample of problems."[^2] Therefore the author felt it is necessary to carry out an empirical study of 9 of the 10 machine learning algorithms which were deemed influential in the field of data mining by International Conference on Data Mining, which was polling source for the Wu paper. These algorithms include C5.0, k-Means, SVM, Apriori, EM, AdaBoost, kNN, Naive Bayes, and CART. PageRank was not considered due to its in-applicability. These methods can be carried out using one all encompassing program known as *caret* written by Max Kuhn etal.[^3] *caret* is an R language package which allows one to use the same syntax for machine learning libraries written by over 200 different researchers also in the R language. These nine machine learning methods will be used on the classification of Oxygen binding proteins, eg. Hemoglobin, into six groupings as well as a negative control supplementing work carried out by S. Muthukrishnan etal, which only investigates the utility of SVM to differentiate the 6 groups.[^4] The machine learning tests were will compared primarily using two measures, cpu-run time, and Cohen's kappa.


 [^1]: *Top 10 algorithms in data mining*, X. Wu, Knowl Inf Syst (2008) 14:1–37,
DOI 10.1007/s10115-007-0114-2
 [^2]: *No Free Lunch Theorems for Optimization*, IEEE Transactions On Evolutionary Computation, Vol. 1,NO. 1, April 1997, D. Wolpert etal 
 [^3]: *The caret Package*, M. Kuhn, 2019-03-27, https://topepo.github.io/caret/index.html
 [^4]: *Oxypred: Prediction and Classification of Oxygen-Binding Proteins*, S. Muthukrishnan etal, Geno. Prot. Bioinfo., Vol. 5 No. 3–4, 2007

<div style="page-break-after: always;"></div>
