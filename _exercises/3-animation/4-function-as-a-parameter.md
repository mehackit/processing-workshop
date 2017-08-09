---
layout: exercise
chapter: Animation
title: Function as a parameter
---

<!-- <img src="{{site.url}}/img/dawg.jpg"> -->

In case you didn't notice, in the last example we gave functions as parameters for the ellipse-function:

<p class="center"><code>ellipse(random(0, 512), random(0, 512), 50, 50);</code></p>

We call the ellipse-function and give the random-functions as parameters.

This is often quite handy. When the ellipse-function is called, it first executes the functions in its parameters (functions <code>random(0, 512)</code> and <code>random(0, 512)</code>). After those functions return their values, ellipse function get executed with the new parameters.