---
layout: exercise
chapter: Transform
title: Radians and degrees
---

*Images and text from <a href="https://processing.org/tutorials/transform2d/" target="_blank">2D Transformations tutorial</a> by J David Eisenberg*

In addition to moving the grid, you can also rotate it with the <code>rotate()</code> function. This function takes one argument, which is the number of radians that you want to rotate. In Processing, all the functions that have to do with rotation measure angles in radians rather than degrees. When you talk about angles in degrees, you say that a full circle has 360°. When you talk about angles in radians, you say that a full circle has 2π radians. Here is a diagram of how Processing measures angles in degrees (black) and radians (red).

<img src="{{site.url}}/img/degrees.png">

Since most people think in degrees, Processing has a built-in <code>radians()</code> function which takes a number of degrees as its argument and converts it for you. It also has a <code>degrees()</code> function that converts radians to degrees. 