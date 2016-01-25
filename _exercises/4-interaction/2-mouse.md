---
layout: exercise
chapter: Interaction
title: Mouse
---

Let's make something interactive. Processing has some nice functions for working with the users mouse. You can get the coordinates with <code>mouseX</code> and <code>mouseY</code> variables, which are updated each frame.

The example below draws a point to the current mouse coordinate. You can edit the code to draw for example a rectangle, circle or a line to the current mouse position.

{% include editor.html filepath="/sketches/interaction1/interaction1.pde" references="mouseX, mouseY, pmouseX, pmouseY, point_" %}