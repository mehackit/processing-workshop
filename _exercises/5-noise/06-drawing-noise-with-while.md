---
layout: exercise
chapter: Noise
title: Drawing noise with while-loop
---

Now it's the time to learn about control structures. <code>While</code> loop is a powerful tool found in most ot the programming languages. If you wish, <a href="https://www.youtube.com/watch?v=RtAPBvz6k0Y" target="_blank">watch this video</a> from Daniel Shiffman as an introduction.

While-loop is repeated as long as the given condition is <code>true</code>. In the example below, the condition is <code>x < width</code> (x is smaller than 500). When x is 500, the condition will be false and the program will move forward and execute draw-funcion again.

{% include editor.html filepath="/sketches/noise4/noise4.pde" references="while, map_, noise_" %}