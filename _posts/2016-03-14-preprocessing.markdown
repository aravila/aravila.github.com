---
layout: post
title:  "Dogs vs cats - Pre-processing"
date:   2016-03-13 22:22:56 -0500
categories: jekyll update
---


In the past few days, I’ve been working on the pre-processing of the images. Specifically, I resized each picture so that they would have the same size. I used part of the tutorial suggested <a href="https://trofimovassya6266h16.wordpress.com">here</a>. Right now, I am working on fixing a MemoryError that I’m getting during the process of loading the data as shared variable.

Following is an example of how to resize an image. More information and example for image processing which can be useful for data augmentation can be found <a href="http://www.scipy-lectures.org/advanced/image_processing/index.html#basic-image">here</a>.

------------------------------------------------------------------------------------------

width = 130<br>
height = 130<br>

Resizing:<br>
file_in = “images/train/cat.0.jpg”<br>
im1 = Image.open(file_in)<br>
im2 = im1.resize((width, height), Image.NEAREST)<br>
im2.save(“resized_images/train/cat.0.jpg")<br>
<img src="{{ site.baseurl }}/img/cat.0.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/cat.1.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/cat.10.jpg" height="130" width="130"><br>
<img src="{{ site.baseurl }}/img/dog.0.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/dog.1.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/dog.10.jpg" height="130" width="130">
