Autoencoder
Definition:
An autoencoder neural network is an unsupervised learning algorithm that applies backpropagation, setting the target values to be equal to the inputs. I.e., it uses y(i)=x(i). [3]

Purpose:
If there is structure in the data, for example, if some of the input features are correlated, then this algorithm will be able to discover some of those correlations. In fact, this simple autoencoder often ends up learning a low-dimensional representation very similar to PCAs.

Benifits:
Denoising autoencoders (DAE) are nice to find a better representation of the numeric data for later neural net supervised learning. One can use train+test features to build the DAE. The larger the testset, the better.
A denoising autoencoder tries to reconstruct the noisy version of the features. It tries to find some representation of the data to better reconstruct the clean one.


-------------

Autoencoders
Autoencoders are neural networks that are trained to reconstruct their original inputs. The aim of an autoencoder is to learn a representation (encoding) for a set of data, typically for dimension reduction. This is achieved by designing a neural network with a bottleneck (to avoid overfitting) and training the network to ignore signal “noise”. The idea of autoencoders has been popular in the field of neural networks for decades, but is most commonly used for denoising pictures or sound. As with any neural network there is a lot of flexibility in how autoencoders can be constructed such as the number of hidden layers and the training strategy (i.e. variational autoencoders). Hence there are many different implementations of autoencoders for the purpose of dimension reduction. Here we will look at RUTA, however if you want to learn how to construct your own autoencoder in R, please refer to this.

R
---
library(ruta)

x <- as.matrix(cereals_num[, 1:12])
ruta_cereals_num <- autoencode(scale(x), 2, type = "robust", 
                               activation = "tanh")

ruta_cereals_num <- data.frame(
  RUTA1 = ruta_cereals_num[, 1],
  RUTA2 = ruta_cereals_num[, 2],
  label = cereals_num$label,
  classification = cereals_num$classification
)

ggplot(ruta_cereals_num, aes(x = RUTA1, y = RUTA2, 
       label = label, col = classification)) +
  geom_point() +
  ggrepel::geom_text_repel(cex = 2.5)
  
  ----
  
  
  We do not check the fun 🎡 cereals for RUTA, since its results appear unstable. Like UMAP, RUTA does best when there is a large number of variables. Furthermore, to work effectively it requires a large number of observations.

Strength

😄 preserves global data structures

😏 new points can be added without recomputing

Weaknesses

😒 large number of observations required for effective training

😫 computationally more expensive

☠️ stochastic

😦 parameter selection, especially neural network selection and training


---------------

https://rpubs.com/yoompubs/476942

R code:
Autoencoder with Kernel Density Estimation Model

```
len_layer2 <- floor(1 + sqrt(ncol(X_train2)))
len_layer1 <- floor(1 + sqrt(len_layer2))

library(keras)
use_session_with_seed(2019)
```


```
input_nume <- layer_input(c(dim(X_train2)[2]))

pred_nume <- input_nume %>% 
  layer_dense(len_layer2) %>%
  layer_activation("selu") %>%
  layer_dense(len_layer1) %>%
  layer_activation("selu") %>%
  layer_dense(len_layer2) %>%
  layer_activation("selu") %>%
  layer_dense(dim(X_train2)[2]) %>%
  layer_activation("sigmoid")

model_nume <- keras_model(input_nume, pred_nume)

summary(model_nume)
```


```
model_nume %>% compile(
  optimizer = optimizer_adam(0.001),
  loss = "mean_squared_error"
  # loss = "mean_absolute_error"
  # loss = "logcosh"
)

history_nume <- model_nume %>% fit(X_train2[y_train==0,], X_train2[y_train==0,],
                                   batch_size = 4096,
                                   validation_data = list(X_valid2[y_valid==0,], X_valid2[y_valid==0,]),
                                   epochs = 10000,
                                   verbose = 0, 
                                   callbacks = list(callback_early_stopping(monitor = "val_loss", patience = 2000, restore_best_weights = TRUE),
                                                    callback_reduce_lr_on_plateau(monitor = "val_loss", factor = 0.1, patience = 500)))

print(history_nume)
```



```
# plot(history_nume)

layer_weight <- keras::get_weights(model_nume)

pred_nume2 <- input_nume %>% 
  layer_dense(len_layer2) %>%
  layer_activation("selu") %>%
  layer_dense(len_layer1)

model_nume2 <- keras_model(input_nume, pred_nume2)
model_nume2 %>% set_weights(layer_weight)

ae_hidden_train <- predict(model_nume2, X_train2)

p1 <- ggpairs(data.frame(ae_hidden_train), mapping = aes(color = as.factor(y_train)),
              lower = list(continuous = wrap("points", alpha = 0.7)),
              diag = list(continuous = wrap("densityDiag", alpha = 0.5)),
              upper = list(continuous = wrap("cor", size = 3)), title = "Hidden layer of Training set")
# Correlation matrix plot
p2 <- ggcorr(data.frame(ae_hidden_train), label = TRUE, label_round = 2)
g2 <- ggplotGrob(p2)
colors <- g2$grobs[[6]]$children[[3]]$gp$fill
# Change background color to tiles in the upper triangular matrix of plots
idx <- 1
p <- ncol(ae_hidden_train)
for (k1 in 1:(p-1)) {
  for (k2 in (k1+1):p) {
    plt <- getPlot(p1,k1,k2) +
      theme(panel.background = element_rect(fill = colors[idx], color="white"),
            panel.grid.major = element_line(color = colors[idx]))
    p1 <- putPlot(p1,plt,k1,k2)
    idx <- idx+1
  }
}
p1
```

### See Also: https://rpubs.com/zkajdan/533047

### See also: https://rpubs.com/khunter/cares_neuralnets







  
