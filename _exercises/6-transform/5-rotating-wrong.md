---
layout: exercise
chapter: Transform
title: Rotating (the wrong way)
---

*Images and text from <a href="https://processing.org/tutorials/transform2d/" target="_blank">2D Transformations tutorial</a> by J David Eisenberg*

Let’s try rotating a square clockwise 45 degrees:

{% include editor.html filepath="/sketches/transform3/transform3.pde" references="rotate_, translate_, pushMatrix_, popMatrix_, radians" %}

How come the square got moved and cut off? The answer is: the square did not move. The grid was rotated. Here is what really happened. As you can see, on the rotated coordinate system, the square still has its upper left corner at (40, 40):

<img src="{{site.url}}/img/rotated_grid.png">