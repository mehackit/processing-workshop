---
layout: exercise
chapter: Transform
title: 2D transformations together
---

Now you can combine different transformations. Below is a sketch that draws four spinning rectangles around mouse. Individual rectangles are rotating counter clockwise and circulating mouse clockwise. The rectangles are also scaled using sine-function.

<img src="{{site.url}}/img/sine.png" height="100">

{% include editor.html filepath="/sketches/transform7/transform7.pde" references="pushMatrix_, popMatrix_, translate_, rotate_, scale_, sin_, radians_, rectMode_" %}