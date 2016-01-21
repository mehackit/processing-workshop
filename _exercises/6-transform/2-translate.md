---
layout: exercise
chapter: Transform
title: Translate
---

Processing has helpful functions like <code>translate</code>, <code>rotate</code> and <code>scale</code>, that make it easy to move, spin, grow or shrink objects in your sketch. Let's look at <code>translate</code> first.

Translate moves the whole coordinate system to a new location. You can create a complex shape relative to position 0,0 and move the shape around by moving the whole canvas.

{% include editor.html filepath="/sketches/transform1/transform1.pde" references="translate_" %}

## How translate works

*Images and text from <a href="https://processing.org/tutorials/transform2d/" target="_blank">2D Transformations tutorial</a> by J David Eisenberg*

In the first image below, you see a rectangle drawn with <code>rect(20, 20, 40, 40);</code>.

If you want to move the rectangle 60 units right and 80 units down, you can just change the coordinates by adding to the x and y starting point: <code>rect(20 + 60, 20 + 80, 40, 40);</code> (second image).

But there is a more interesting way to do it: move the coordinate system instead. If you move the coordinates 60 units right and 80 units down, you will get exactly the same visual result. Moving the coordinate system is called translation. In the third image <code>translate(60, 80);</code> is called first and then <code>rect(20, 20, 40, 40);</code>. This comes very handy when you want to draw and move more complex shapes.

<img class="inline" height="230" src="{{page.baseurl}}/img/translate.png"> <img class="inline" height="230" src="{{page.baseurl}}/img/translate_new_coords.png"> <img class="inline" height="230" src="{{page.baseurl}}/img/translate_moved_grid.png">