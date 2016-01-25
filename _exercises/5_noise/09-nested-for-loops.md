---
layout: exercise
chapter: Noise
title: Nested for-loops
---

In the last example we animated a single noise curve. Why not use another for-loop and animate 25 curves!

The example has two nested for-loops. The inner one draws a curve. The outer one repeats the inner loop with different values. Loops (especially nested loops) can be tricky to comprehend even for experienced programmers. Take your time and try to understand step-by-step what the code does.

{% include editor.html filepath="/sketches/noise7/noise7.pde" references="for, noise_, map_" %}