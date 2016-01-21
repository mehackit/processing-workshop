---
layout: exercise
chapter: Noise
title: How to use noise?
---

<code>noise()</code> always returns a value between 0-1 depending on the coordinate that is given as a parameter. <code>noise(0)</code> returns a value and if you call <code>noise(0)</code> again, you get the same value again. If you call <code>noise(0.01)</code> you get a new value. The graph below shows a <code>noise(x)</code> curve, i.e. the value of noise on y-axis at the corresponding x-value. 

<img src="{{site.baseurl}}/img/noisechart.png">

Depending on how much you increment x each frame the values will be smoother or more random.

{% include editor.html filepath="/sketches/noise2/noise2.pde" references="noise_" %}