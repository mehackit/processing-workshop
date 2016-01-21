---
layout: exercise
chapter: Interaction
title: Drawing a line
---

Point function makes the drawing a bit, well, pointy. We can make a smoother result usling line. Line function draws a line bitween two points. We get the current mouse position with <code>mouseX</code> and <code>mouseY</code>. Processing also has variables for the previous positions called <code>pmouseX</code> and <code>pmouseY</code>.

In the draw function I have used a <code>mousePressed</code>-variable and an <code>if</code>-statement. If-statement checks if the given condition is true and, if it is, executes the statements. Just like <code>mouseX</code> is a variable, Processing has a <code>mousePressed</code>-variable wich is <code>true</code>, if the mouse is pressed and otherwise <code>false</code>.

{% include editor.html filepath="/sketches/interaction2/interaction2.pde" references="line_, mouseX, mouseY, pmouseX, pmouseY, if, mousePressed" %}