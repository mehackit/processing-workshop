---
layout: exercise
chapter: Animation
title: Variables
---

Often you'll want to store something. You can store different things with a thing called variable. A variable is like a box where you can put things and take things out when you need them.

In Processing, you'll have to state what kind of things you want to store in the box. For a computer a whole number (1, 2, 4902, ...) is a different thing than a decimal number (1.0, 3.14, ...). So when you create a variable, you'll have to state if the variable is a whole number, decimal number, a string or maybe something other. Boolean, color, int, float, String are quite common, but for now just you can just use float.

It also matter where you create your variable. If you create your variable inside the draw function, it will only be visible in the draw function. If you create the variable before the setup function, it will be visible to the whole sketch.

{% include editor.html filepath="/sketches/helloworld4/helloworld4.pde" references="float, integersFloats, width, height, random_, ellipse_" %}