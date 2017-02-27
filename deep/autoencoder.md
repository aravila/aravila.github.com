---
layout: page
title: 
permalink: /deep/auto
---

  <header class="post-header">
    <h1 class="post-title">Autoencoders</h1>
  </header>
  <br><br>
<p>

<br><br>
Autoencoders are neural network algorithms that provide as output the presented input after a process of compression. For autoencoders the hidden layer <i><b>h</b></i> is a compressed representation of the input <i><b>x</b></i>, which is obtained by an encode function  <i><b>h</b></i> = <i>f(<b>x</b>)</i>. This representation must be decompressed by a decode function, <i><b>x'</b></i> = <i>g(<b>h</b>)</i>, in order to obtain a reconstruction of the input. 

<br><br>
Here is a simple autoencoder representation where the red neurons are expected to be an approximation of the green neurons. 
<br><br>
<center><img src="{{ site.baseurl }}/img/autoencoder.png" height="242" width="342"></center>
<br><br>

Although it may sound contradictory, it is not really desired that an autoencoder perfectly copies the input. Our main interest here is on allowing the hidden layer to learn relevant properties of the input and discarding the ones that are not so important. This is achieved by defining the hidden layer with lower dimension than the input.


<br><br>
The loss function of an autoencoder is represented by <i>L</i>(<i><b>x</b></i>, <i>f(<b>x</b>)</i>). If our function <i>f(<b>x</b>)</i>) is linear and we choose the mean square error as loss, then the autoencoder is learning the principal subspace of the input and it performs a similar job as PCA. Nonlinear encode/decode function are very powerful and depending on its capacity it might be complex enough to map the exact input into the output.

<br><br>
</p>
<b>References</b><br><br>
https://blog.keras.io/building-autoencoders-in-keras.html
