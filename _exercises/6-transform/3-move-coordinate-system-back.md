---
layout: exercise
chapter: Transform
title: Push and pop
---

## How to move the coordinate system back to its original position?

When you call translate, the whole coordinate system moves. If you call translate inside the draw-function, Processing will automatically move the coordinate system to its original position before the function loops again. You can also control this behaviour. <code>pushMatrix()</code> saves the current position of the coordinate system. Then you can do your transformations and finally call <code>popMatrix()</code>, which restores the coordinate system to the way it was before.

{% include editor.html filepath="/sketches/transform2/transform2.pde" references="translate_, pushMatrix_, popMatrix_, void, for" %}