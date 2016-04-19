---
layout: post
title:  "Dogs vs cats - Data Augmentation"
date:   2016-04-16 3:02:56 -0500
---

Data augmentation is a form of regularization an is considered an effective way to improve model generalization. This is because it allows us to present more data to our model and the technique is pretty much straighfoward for tasks involving images. 

To enlarge my dataset, the data augumentation consisted of a 45 degree rotation, clock and anti-clockwise, and also horizontal reflection. The images bellow depicts the transformations applied on our dataset, along with some of the codes used for that.

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

flipping:<br>
im1 = Image.open(file_in)<br>
img_rot = img.rotate(45)
im2 = im1.resize((width, height), Image.NEAREST)<br>
im2.save(“flipped_images/train/cat.0.jpg")<br>
<img src="{{ site.baseurl }}/img/cat.flip0.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/cat.flip1.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/cat.flip10.jpg" height="130" width="130"><br>
<img src="{{ site.baseurl }}/img/dog.flip0.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/dog.flip1.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/dog.flip10.jpg" height="130" width="130">



Rotating to the right:<br>
im1 = Image.open(file_in)<br>
img_rot = img.rotate(45)
im2 = im1.resize((width, height), Image.NEAREST)<br>
im2.save(“resized_images/train/cat.0.jpg")<br>
<img src="{{ site.baseurl }}/img/cat.right0.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/cat.right1.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/cat.right10.jpg" height="130" width="130"><br>
<img src="{{ site.baseurl }}/img/dog.right0.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/dog.right1.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/dog.right10.jpg" height="130" width="130">

Rotating to the left:<br>
im1 = Image.open(file_in)<br>
img_rot = img.rotate(-45)
im2 = im1.resize((width, height), Image.NEAREST)<br>
im2.save(“resized_images/train/cat.0.jpg")<br>
<img src="{{ site.baseurl }}/img/cat.left0.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/cat.left1.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/cat.left10.jpg" height="130" width="130"><br>
<img src="{{ site.baseurl }}/img/dog.left0.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/dog.left1.jpg" height="130" width="130">
<img src="{{ site.baseurl }}/img/dog.left10.jpg" height="130" width="130">

