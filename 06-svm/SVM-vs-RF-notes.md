Use an independent validation set and test.The usual way is to use the confusion matrix. Kappa is a good start although not perfect (See Foody's and Congalton's papers)
like those for a start:

* Congalton RG, Green K (1999) Assessing the accuracy of remotely sensed data: principles
and practices. Lewis Publishers, Boca Raton

* Congalton RG, Oderwald RG, Mead RA (1983) Assessing Landsat classiﬁcation accuracy
using discrete multivariate analysis statistical techniques. Photogramm Eng Remote
Sens 49:1671–1678

* Foody GM (1992) On the compensation for chance agreement in image classiﬁcation
accuracy assessment. Photogramm Eng Remote Sens 58:1459–1460

============

Expanding what people have already said. You have to define what is your problem. Do you wish to compare just the algorithm? Then you have to select several very different datasets to test, use repeated cross-validation and paired t-test (for example). If you have an specific problem at hand you try to select many algorithms and parametrizations and you can use also cross-validation and paired t-test. If your interest is even broadher you can compare multiple algorithms over multiple datasets using critical diagrams. All depends on the objective of your comparison. There is further description of these methods and links to articles in my thesis:

https://www.researchgate.net/publication/237145103_Data_analysis_advances_in_marine_science_for_fisheries_management_Supervised_classification_applications?ev=prf_pub

===============

Tree methods are good if;

1. You have lots of predictor variables and data.

2. Your test set values are within the range of values found within the training set (for both predictors and response). Trees tend to suck at extrapolative predictions although they have some success with panel data.

3. Suitable predictor variables are de-noised (e.g. wavelet transformation, etc).

SVM are likely better than tree methods if;

1. The dataset is smaller with less predictor variables.

2. It's a time series.

3. Extrapolative predictions are needed (opposed to interpolative predictions).

============

https://martin-thoma.com/comparing-classifiers/

================

ML packages:
 `caret`, `modelr`, `yardstick`, `rsample`, `parsnip`, `tensorflow`, `keras`, `cloudml`, and `tfestimators`.
