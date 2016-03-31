---
layout: post
title:  "Dogs vs cats - Pre-processing!"
date:   2016-03-13 22:22:56 -0500
categories: jekyll update
---
Project follow-up...


In the past few days, I’ve been working on the pre-processing of the images. Specifically, I resized each picture so that they would have the same size. I used part of the tutorial suggested <a href="https://trofimovassya6266h16.wordpress.com">here</a>. Right now, I am working on fixing a MemoryError that I’m getting during the process of loading the data as shared variable.

Following is an example of how to resize an image. More information and example for image processing which can be useful for data augmentation can be found <a href="http://www.scipy-lectures.org/advanced/image_processing/index.html#basic-image">here</a>.

------------------------------------------------------------------------------------------

width = 200

height = 200

file_in = “images/train/cat.0.jpg”

im1 = Image.open(file_in)

im2 = im1.resize((width, height), Image.NEAREST)

im2.save(“cat.0.jpg")