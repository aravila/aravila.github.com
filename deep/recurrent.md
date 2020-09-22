---
layout: page
title: 
permalink: /deep/recurrent
---

  <header class="post-header">
    <h1 class="post-title">Recurrent Neural Networks</h1>
  </header>
  <br><br>
<p>

Recurrent neural networks (RNNs) correspond to a class of neural network architectures used for modeling sequencial data such as text and speech. The main difference to the classical feedfoward neural network is that for RNNs the values of their hidden units are defined based on a recursive computation. The diagram bellow is a simple example of how it works. The input <b>x<sup>(t)</sup></b> represents a sequential data with timestep t ranging from  1 to &tau;. Noticed that each example in the dataset can have variable length (i.e., &tau; can vary within each observation). A linear operation is performed through the multiplication of the input, <b>x<sup>(t)</sup></b>, by the matrix of weights, <b>W<sub>I</sub></b>. The result is then passed through an activation function to compute <b>h<sup>(t)</sup></b>. Up to now, this is the same steps involved on a feedforward neural network. In order to make this archictecture recurrent, RNN models store and use previous computations performed on the hidden unit. This is possible by turning one or more hidden unit into a recurrent hidden unit, which can be achieved by multiplying it by <b>W<sub>R</sub></b> and yielding hidden states corresponding to delayed timesteps, such as <b>h<sup>(t-1)</sup></b>, <b>h<sup>(t-2)</sup></b>, <b>h<sup>(t-3)</sup></b>, <b>h<sup>(t-4)</sup></b>, etc. 


<center>
<img src="{{ site.baseurl }}/img/rnn1.png" height="232" width="150">
</center>

This recurrence allows the model to store information of previous computation which is a powerful strategy for capturing short and long temporal dependencies in the data. 


