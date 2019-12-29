Machine Learning from Podcast MLGuide


3 Steps of ML

1. infer / predict 
2. error / loss; sometime aka cost function taken from business
3. train / learn


define:
- Algorithm as software which spells out the steps for the mathematics and procedure.
- rows equal observations, n's
- columns equal Attributes or Features or Variables
- Last column is typically the Y - predictor.
- the model is the stored pattern learned the algorithm the value of numerical values is the model.
- sometimes the model is ALL the data. For example, KNN does not learn deeply. KNN learns shallowly because it does not generalize but KEEPS the original data for predicting values in the future.  It does not keep formula in the same way a regression line is the distillation of all the data points.
- 
- uses linear algebra to solve given all observations
- Features can be numerical or nominal, categorical or even binary. 
- The Y value or outcome could be also be a numerical value or a categorical or even binary too.
- the model produces the coefficients for the linear regression for example, but in machine learning it is more often called a weight.


Procedure:

1. load data
2. clean data, delete id and number of aa, set class as factor
3. further split the data into 80:20 parts, 
   - 80% training data
   - 20% testing data
4. Use training data to learn or train the model.
   - Set up training grid to tuning parameters
   - Set up cross-validation
5. Obtain times for training
6. Using Testing data set Predict classes and generate CM.
7. Compile CM output (Accuracy, MCC, etc.) for comparing 10 models.


3 Categories of Learning

1. Supervised; continuous output (1-10^6) or discrete (Class 1,2,3,4) or categorical output (yes or no)
2. Unsupervised; binning, clustering
3. Reinforcement learning; really cool

monothetic or polythetic




























