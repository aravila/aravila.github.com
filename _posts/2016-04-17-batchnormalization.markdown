---
layout: post
title:  "Dogs vs cats - Batch normalization (77%)"
date:   2016-04-18 3:22:56 -0500
categories: jekyll update
---


In order to speed up the learning process as well as to improve accuracy, I decided to try batch normalization. The method can be used with higher learning rates and in some cases dropout may not be necessary. During my tests, I noticed that change the learning rate from 0.01 to 0.1 took my accuracy from 0.7314 to , which confirms the assumption aforementioned.
 

<img src="{{ site.baseurl }}/img/loss_adadelta3.png" height="242" width="342">
<img src="{{ site.baseurl }}/img/accuracy_adadelta3.png" height="242" width="342">


Epoch 62/100<br>
80000/80000 [==============================] - 266s - <br>
loss: 0.2558 - acc: 0.7714 - val_loss: 0.6044 - val_acc: 0.8941


<!-- https://adbrebs.wordpress.com/page/3/ -->