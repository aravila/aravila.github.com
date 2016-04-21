---
layout: post
title:  "Dogs vs cats - Improved results (82% accuracy)"
date:   2016-04-15 2:22:56 -0500
categories: jekyll update
---
<style>
table, th, td {
    border: 0px solid black;
    border-collapse: collapse;
}
th, td {
    height:5px;
}

</style>


To improve my previous results, I decided to try something more complex. This time I am using 6 convolutional layers with different numbers of filters, as described below. 

<br>

Architecture overview:<br>
<table>
    <tr>
        <td align="right">INPUT&nbsp;&nbsp;</td>
        <td align="left">[130x130x3]</td> 
    </tr>
    <tr>
        <td align="right">CONV&nbsp;&nbsp;</td>
        <td align="left">[3x3] (32 filters)</td> 
    </tr>
    <tr>
        <td align="right">TANH&nbsp;&nbsp;</td>
        <td align="left"></td> 
    </tr>
    <tr>
        <td align="right">CONV&nbsp;&nbsp;</td>
        <td align="left">[3x3] (32 filters)</td> 
    </tr>
    <tr>
        <td align="right">TANH&nbsp;&nbsp;</td>
        <td align="left"></td> 
    </tr>
    <tr>
        <td align="right">POOL&nbsp;&nbsp;</td>
        <td align="left">[2X2]</td> 
    </tr>
    <tr>
        <td align="right">CONV&nbsp;&nbsp;</td>
        <td align="left">[3x3] (64 filters)</td> 
    </tr>
    <tr>
        <td align="right">TANH&nbsp;&nbsp;</td>
        <td align="left"></td> 
    </tr>
    <tr>
        <td align="right">CONV&nbsp;&nbsp;</td>
        <td align="left">[3x3] (64 filters)</td> 
    </tr>
    <tr>
        <td align="right">TANH&nbsp;&nbsp;</td>
        <td align="left"></td> 
    </tr>
    <tr>
        <td align="right">POOL&nbsp;&nbsp;</td>
        <td align="left">[2X2]</td> 
    </tr>
    <tr>
        <td align="right">CONV&nbsp;&nbsp;</td>
        <td align="left">[3x3] (128 filters)</td> 
    </tr>
    <tr>
        <td align="right">TANH&nbsp;&nbsp;</td>
        <td align="left"></td> 
    </tr>
    <tr>
        <td align="right">CONV&nbsp;&nbsp;</td>
        <td align="left">[3x3] (128 filters)</td> 
    </tr>
    <tr>
        <td align="right">TANH&nbsp;&nbsp;</td>
        <td align="left"></td> 
    </tr>
    <tr>
        <td align="right">POOL&nbsp;&nbsp;</td>
        <td align="left">[2X2]</td> 
    </tr>
    <tr>
        <td align="right">FC&nbsp;&nbsp;</td>
        <td align="left">[512]</td> 
    </tr>
</table>
<br>


Using the same configuration (100 batches, 100 epochs) described in my first attempt, the convnet achieved around 17% of validation error, 8% of improvement compared to my previous net. 

<img src="{{ site.baseurl }}/img/loss_adadelta2.png" height="242" width="342">
<img src="{{ site.baseurl }}/img/accuracy_adadelta2.png" height="242" width="342">

Epoch 100/100<br>
20000/20000 [==============================] - 46s - <br>
loss: 0.2883 - acc: 0.8752 - val_loss: 0.4437 - val_acc: 0.8267


<!-- https://adbrebs.wordpress.com/page/3/ -->