---
layout: exercise
chapter: Animation
title: Using variables
---

When you create a variable, you have to state the variable's type. After that you can change the variables value by assigning a new value to the variable.

<p class="center">Create new variable: <code>float f = 3.14;</code>. Assign a new value: <code>f = 6.28;</code></p>

If you create a variable in the beginning of the sketch, it will be visible for the whole sketch. If you create a variable inside a function (like setup or draw) it will only be visible in the corresponding function.

{% include editor.html filepath="/sketches/helloworld5/helloworld5.pde" references="int, float, frameRate_, width, height, fill_, stroke_, random_, ellipse_, rect_" %}