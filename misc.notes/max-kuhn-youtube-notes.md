Caret Package for R
Max Kuhn
Developer of Caret

- https://topepo.github.io/caret/index.html
- https://www.youtube.com/watch?v=7Jbb2ItbTC4


 `caret` package (*C*lassification *A*nd *RE*gression *T*raining)

For fun See:
https://topepo.github.io/caret/models-clustered-by-tag-similarity.html


### No free lunch theorem
We have no reason to draw any inference concerning any object beyond those of which we have had experience *David Hume*

In the absence of any knowledge the prediction problem, no model can be said to be uniform better than any other.

http://no-free-lunch.org/

In other words, without prior knowledge it is very difficult to discern which model is the best.


R has ton of models but are so different for each one.

Caret creates unified interface.
Caret has 147 different models it interacts with.

jss paper: www.jstatsoft.org/v28/i05/paper

book: Applied Predictive Modeling (http://appliedpredictivemodeling.com/)


Churn dataset can be found:

```
library(c50)
data(churn)
```

`str(churnTrain)`

```
predictors <- names(churnTrain)[names(churnTrain) != "churn"]
```

This give an array of predictors only no 'churn' feature.

In caret the first level is the level of importance, this opposite from most other models.


Data Splitting: Very useful/common command!

```
set.seed(1)

inTrainingSet <- createDataPartition(allData$churn, p=0.8, list=False)

churnTrain = allData[ inTrainingSet,]
churnTest  = allData[-inTrainingSet,]
```
############################################################GOOD
How does `createDataPartition` work?
- list=False return data in integers
- for 2 level split; takes the 'yes' and does 80% split and THEN takes the 'no' and does 80/20 split and combines them. Therefore all the yes and no data will be best represented in its balance or imbalanced form.
- setting seed allows you to get the same split every time/
#################################################################


Other functions in package:
 `createFold`, `createMultiFolds`, `creatResamples`


## Caret has many Pre-Processing methods;

`preProcess` calculations values that can be used to apply any data set for training of unknowns.

eg. centering, scaling, spatial sign transformation, PCA or ICA(independent component analysis) "signal extraction", imputation, Box-Cox transformations, etal.

eg.
```
numerics = c('value1', 'value2', 'value3')

# Determine means and sd's
procValuees <- preProcess(churnTrain[ ,numerics],
                          method = c('center', 'scale', 'YeoJohnson')

# Use predictor methods to do adjustments
TrainScaled <- predict(procValues, churnTrain[ ,numerics])
TestScaled  <- predict(procValues, churnTest[ ,numerics])
```

There is a print method to investigate what happened

```
procValues
```

- eg. Call:
- preProcesss.default(...
- Created from x samples and y variables...
- lambda estimates for Yeojohnson...


## Tuning Models:

eg take a single tree (weak Lerner) then boost to stronger learning, using weights.
eg. 'AdaBoost' algo.

In plain English: Produce a weighted set of trees then average those, the weighted averages are based the quality of each tree.


## Boost Tree Parameters:

We now have a boosting machine in R:
1. gbm in `gbm` R-package,
2. ada in `ada`  R-package,
3. blackboost in `mboost` R-package.


One can boost via:
1. number of iterations (ie trees),
2. complexity of the tree (ie number of splits)
3. learning rate (aka. shrinkage): how quickly the algo adapts, (small numbers can indicate slow learners).

One can now make a 3-d grid work of the 3 factors,
- tree depth
- learning rate
- number of trees


## `TRAIN` function in `caret`
eg

```
gbmTune <- train(x = churnTrain[, predictors],
                 y = churnTrain$churn,
                 method = 'gbm')

# OR use Formula interface:

gbmTune <- train(churn ~ .,
                 data = churnTrain,
                 method = 'gbm'
                 verbose = FALSE,
                 trControl = ctrl)
```

??? trControl @ 32:20 of talk

- verbose is not with every package but can be used to simply pass arguments back and forth.

## Repeated Cross-Validation

by default `train` uses bootstrap for resampling. However we can switch to 5 repeats of 10-fold cross-validation.


# Changing Resampling Technique using Cross-validation


```{r}
ctrl <- trainControl(method = 'repeatedcv',
                     repeats = 5)
gbmTune <- train(churn ~ .,
                 data = churnTrain,
                 verbose = FALSE,
                 trControl = ctrl)
# Sets operations to 5 reps of 10X CV.
```

## @ 33:00 **Using Different Performance Metrics**
- https://www.youtube.com/watch?v=7Jbb2ItbTC4

`twoClassSummary` function is defined in `caret` and can calculate accuracy, sensitivity, AUC/ROC, etc. See: ?train.

```{r}
ctrl <- trainControl(method = 'repeatedcv',
                     repeats = 5,
                     classProbs = TRUE,
                     summaryFunction = twoClassSummary)

gbmTune <- train(churn ~ .,
                 data = churnTrain,
                 metric = "ROC"
                 verbose = FALSE,
                 trControl = ctrl)
# Sets operations to 5 reps of 10X CV.
```


## Expanding the Search Grid
Time: 34:41


See: 5.5.2 Alternate Tuning Grids
https://topepo.github.io/caret/model-training-and-tuning.html#basic-parameter-tuning

example tree depths can be investigated from 1 to 7 deep, boosting iterations from 100 to 1000 and two different learning rates.

Create a data frame with these parameters to pass the `train`.

The column names should be the parameter name preceded by a dot.

Again See: ?train for tunable parameters for each model.

Example:

```{r}
ctrl <- trainControl(method = 'repeatedcv',
                     repeats = 5,
                     classProbs = TRUE,
                     summaryFunction = twoClassSummary)

#ADDED
grid <- expand.grid(.interaction.depth = seq(1,7, by=2),
                    .n.trees = seq(100, 1000, by=50),
                    .shrinkage = c(0.01, 0.1))

gbmTune <- train(churn ~ .,
                 data = churnTrain,
                 method = 'gbm'
                 metric = "ROC"
                 verbose = FALSE,
                 trControl = ctrl)
# Sets operations to 5 reps of 10X CV.
```



## Test expand.grid

```{r}
gbmGrid <-  expand.grid(interaction.depth = c(1, 5, 9),
                        n.trees = (1:30)*50,
                        shrinkage = 0.1,
                        n.minobsinnode = 20)

nrow(gbmGrid)
```
> 90


## Example Code from Webinar:

Entire example put together!

To run multi-cores: library(doMC)

```
library(doMC)
registerDoMC(3)

library(caret)
library(gbm)
library(pROC)
library(plyr)

library(C50)
data(churn)

predictors <- names(churnTrain)[names(churnTrain) != "churn"]

#set.seed(1)

#inTrainingSet <- createDataPartition(churn$churn, p=0.8, list=False)

#churnTrain = churn[ inTrainingSet,]
#churnTest  = churn[-inTrainingSet,]

#Does not work and gives error:
#Error: The tuning parameter grid should not have columns n.trees, interaction.depth, shrinkage, n.minobsinnode
#grid <- expand.grid(.interaction.depth = seq(1,7, by=2),
#                    .n.trees = seq(100, 1000, by=50),
#                    .shrinkage = c(0.01, 0.1))

grid <- expand.grid(.n.trees=500,
                    .interaction.depth=6,
                    .shrinkage = 0.01,
                    .n.minobsinnode = c(10))

ctrl <- trainControl(method = "repeatedcv",
                     repeats = 5,
                     classProbs = TRUE,
                     summaryFunction = twoClassSummary)

set.seed(1)
gbmTune <- train(churn ~ .,
                 data = churnTrain,
                 method = "gbm",
                 metric = "ROC",
                 tuneGrid = grid,
                 verbose = FALSE,
                 trControl = ctrl)

gbmPred = predict(gbmTune, churnTest)

gbmProbs = predict(gbmTune, churnTest, type = "prob")

grid
```

>  .n.trees .interaction.depth .shrinkage .n.minobsinnode
>1      500                  6       0.01              10

```
gbmTune
```

Stochastic Gradient Boosting

3333 samples
  19 predictors
   2 classes: 'yes', 'no'

No pre-processing
Resampling: Cross-Validated (10 fold, repeated 5 times)
Summary of sample sizes: 3000, 3000, 3000, 3000, 2999, 2999, ...
Resampling results:

  ROC        Sens       Spec     
  0.9185358  0.7226531  0.9929825

Tuning parameter 'n.trees' was held constant at a value of 500
Tuning parameter 'shrinkage' was held constant at a value of 0.01
Tuning parameter 'n.minobsinnode' was held constant at a value of 10

- https://stats.stackexchange.com/questions/30645/role-of-n-minobsinnode-parameter-of-gbm-in-r

- n.minobsinnode: number or minimum observations in a node, this the number of least obs in a given node to split.


```
gbmPred <- predict(gbmTune, churnTest)
str(gbmPred)
```

Factor w/ 2 levels "yes","no": 2 2 2 2 2 2 2 2 2 2 ...

```
gbmProbs <- predict(gbmTune, churnTest, type="prob")
str(gbmProbs)
```

'data.frame':   1667 obs. of  2 variables:
 $ yes: num  0.0385 0.0584 0.2369 0.0382 0.0328 ...
 $ no : num  0.961 0.942 0.763 0.962 0.967 ...


```
head(gbmProbs)
```
         yes        no
1 0.03853843 0.9614616
2 0.05839506 0.9416049
3 0.23690959 0.7630904
4 0.03815186 0.9618481
5 0.03278145 0.9672185
6 0.05434150 0.9456585

```
confusionMatrix(gbmPred, churnTest$churn)
```

Confusion Matrix and Statistics

          Reference
Prediction  yes   no
       yes  155    5
       no    69 1438

               Accuracy : 0.9556         
                 95% CI : (0.9446, 0.965)
    No Information Rate : 0.8656         
    P-Value [Acc > NIR] : < 2.2e-16      

                  Kappa : 0.783          
 Mcnemar's Test P-Value : 2.414e-13      

            Sensitivity : 0.69196        
            Specificity : 0.99653        
         Pos Pred Value : 0.96875        
         Neg Pred Value : 0.95421        
             Prevalence : 0.13437        
         Detection Rate : 0.09298        
   Detection Prevalence : 0.09598        
      Balanced Accuracy : 0.84425        

       'Positive' Class : yes    


```
rocCurve <- roc(response = churnTest$churn,
                predictor = gbmProbs[, "yes"],
                levels = rev(levels(churnTest$churn)))

rocCurve
```

Call:
roc.default(response = churnTest$churn, predictor = gbmProbs[,     "yes"], levels = rev(levels(churnTest$churn)))

Data: gbmProbs[, "yes"] in 1443 controls (churnTest$churn no) < 224 cases (churnTest$churn yes).
Area under the curve: 0.9269

```
plot(rocCurve)
plot(rocCurve,
     print.thres = c(0.5, 0.2), # oveerlays points at 0.5 and 0.2
     print.thres.pch = 16,
     print.thres.cex = 1.2)
```

#### SVM EXAMPLE ######################
# How to do a SVM with a Radial Bias Factor parameter

set.seed(1)
svmTune <- train(churn ~ .,
                 data = churnTrain,
                 # Tell it to fit a svm Model and tune
                 # over Cost and RBF parameter
                 method = "svmRadial",
                 # This pre-precossing will be applied to these
                 # data and the new samples too.
                 proProc = c("center", "scale"),
                 # Tune over different values of cost
                 tuneLenght = 10,
                 trControl = ctrl,
                 metric = "ROC")


Now try a flexible discrimant model               
set.seed(1)
fdaTune <- train(churn ~ .,
                 data = churnTrain,
                 # Now try a flexible discrimant model
                 # using MARS basis functions
                 method = "fda",
                 tuneLength = 10,
                 trControl = ctrl,
                 metric = "ROC")

