---
layout: page
title: 
permalink: /deep/early
---

  <header class="post-header">
    <h1 class="post-title">Early Stopping</h1>
  </header>
  <br><br>
<p>
When training your machine learning model is not uncommon that the training error decreases while the validation error gets stuck or even increases. This kind of situation characterizes ovefitting. In other words, your model is not really learning how to generalize to unseen data (which is not in accordance with your ultimate goal!). If after waiting for a considerable amount of time (e.g. many training steps), validation error can not get any lower, it is time to stop the training process and review your model in case the minimal error achieve does not satisfy what is required for your application. It will save computational power and mostly important your time!
<br><br>

Such situation is depicted in the figure bellow. Notice that during the first 30 epochs both training and validation error decreases quite monotonically. However, after around 35 epochs the validation set starts to increase while training error keeps decreasing. At this point, we can clearly observe overfitting after a pre-defined number of epochs the process is stopped and this is an example of applying early stopping technique.
<br><br>

<center><img src="{{ site.baseurl }}/img/loss_adadelta3.png" height="242" width="342"></center>

<br><br>
Early Stopping is a strategy to automatically detecting the aforementioned situation. It is considered a form o regularization in a sense that it limits the number of interactions of  optimization algorithms such as stochastic gradient descent. There are two critical step related to early stopping. The first one is the necessity of running the validation set while performing the training, which can be costly. That's the only way we can check the generalization error. Yet, another important step is storing the parameters everytime the validation error decreases. This can be saved on a hard disk considering that the information is usually not read during training.




</p>

