---
layout: exercise
chapter: Shapes
title: Grayscale colors
---

<img src="{{site.baseurl}}/img/grayscale.png" width="300px">

In the digital world, color is defined as a range of numbers. Let's start with the simplest case: black and white or grayscale. 0 means black, 255 means white. In between, every other number (50, 87, 162, 209, and so on) is a shade of gray ranging from black to white.

Calling a fill-function chances the fill color for all what's drawn after the fill-function call. Stroke-function does the same for outline color.

<code>fill(0);</code> Fill with one parameter sets a grayscale color. This one is black.

<code>fill(255, 10);</code> Fill with two parameters sets a grayscale color with transparency. This one is quite transparent white.

Try out fill and stroke to color the sketch below.


{% include editor.html filepath="/sketches/shapes4/shapes4.pde" references="color, fill_, stroke_" %}

When you draw many shapes and define many colors, Processing will always use the most recently specified stroke and fill. Calling stroke or fill overrides the previous values and the following shapes are drawn with the new colors, until new colors are set:

<img src="{{site.baseurl}}/img/colors_and_order.png">