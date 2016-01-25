---
layout: exercise
chapter: Transform
title: Rotating (the right way)
---

*Images and text from <a href="https://processing.org/tutorials/transform2d/" target="_blank">2D Transformations tutorial</a> by J David Eisenberg*

The correct way to rotate the square is to: 1) Translate the coordinate system’s origin (0, 0) to where you want the upper left of the square to be. 2) Rotate the grid π/4 radians (45°) 3) Draw the square at the origin.

<a href="{{site.url}}/img/correct_rotate_grid.png" target="_blank"><img src="{{site.url}}/img/correct_rotate_grid.png" height="100"></a>

{% include editor.html filepath="/sketches/transform4/transform4.pde" references="rotate_, translate_, pushMatrix, popMatrix_, radians_" %}