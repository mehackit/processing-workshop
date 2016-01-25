---
layout: exercise
chapter: Transform
title: Scaling with sine
---

Before you used noise-function to generate nice smooth values for forexample coordinates. Let's do something similar with sine-function for scaling objects.

Sine-function fluctuates nicely between -1 and 1. If we call <code>sin(x)</code> and move x a little bit on each frame, we get values that alternate between -1 an 1. Add + 1 to that value and we get values between 0-2 for the scale:

<img src="{{site.url}}/img/sine.png" height="100">

{% include editor.html filepath="/sketches/transform6/transform6.pde" references="scale_, sin_" %}