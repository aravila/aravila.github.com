---
layout: post
title:  "Dogs vs cats - First attempt!"
date:   2016-03-09 22:22:56 -0500
categories: jekyll update
---
Project follow-up...


I’m working on dogs vs cats project. I’m using a convolutional net as expected and at this point I am dealing with the following runtime error:

---------------------------------------------------------------------------

shared_x = theano.shared(numpy.asarray(data_x, dtype=theano.config.floatX), borrow=True)

ValueError: setting an array element with a sequence.

---------------------------------------------------------------------------


I’ve converted the database into a HDF5 dataset and it seems that the issue has to do with the images size. Right now, I’m working on doing some preprocessing before the actual training.