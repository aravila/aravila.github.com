---
layout: post
title:  "Dogs vs cats - Overfitting"
date:   2016-04-17 3:22:56 -0500
categories: jekyll update
---

I've tested the impact of data augmentation on the already discussed models. Results were not very exciting since generalization was very poor in both cases. The model is clearly overfitting and did not go through all epochs. The plots bellow shows the result obtained.

<img src="{{ site.baseurl }}/img/loss_adadelta_aug.png" height="242" width="342">
<img src="{{ site.baseurl }}/img/accuracy_adadelta_aug.png" height="242" width="342">


Epoch 33/100<br>
80000/80000 [==============================] - 266s - <br>
loss: 0.4894 - acc: 0.7729 - val_loss: 1.4173 - val_acc: 0.4786


<!-- https://adbrebs.wordpress.com/page/3/ -->