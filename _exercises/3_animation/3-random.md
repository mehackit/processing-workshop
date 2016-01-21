---
layout: exercise
chapter: Animation
title: Random
---

In the last example, everything was a bit static. The draw-function got called over and over again (30-60 times per second), but it only draw the same rectangle each time. Let's create some movement by changing where the rectange is drawn each frame.

<code>random(min, max);</code> returns a random decimal number between min and max. The example below uses random to generate values for the x and y coordinate of a rectangle. Try out the example and create different shapes with random position and size.

{% include editor.html filepath="/sketches/helloworld3/helloworld3.pde" references="random_, rect_" %}