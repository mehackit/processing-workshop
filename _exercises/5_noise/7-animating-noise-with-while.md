---
layout: exercise
chapter: Noise
title: Animate noise with while-loop
---

If we edit the previous example a little bit, we can animate the noise curve. So far we have been giving noise-function only one parameter. We can also give noise-function two parameters, x- and y-coordinate. If we add  a y-coordinate to the noise-function and increment the y-coordinate at the end of the draw-function we get slightly different curve on each frame:

{% include editor.html filepath="/sketches/noise5/noise5.pde" references="noise_, while, map_" %}