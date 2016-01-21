---
layout: exercise
chapter: Animation
title: Structure
---

So far our sketches have been only a bunch of commands that the computer executes form top to bottom and then stops. That's not all we can do. We can group statements to functions (yes, you have been calling functions that are actually a group of statements) and have more control over the execution.

Processing has two special functions, <code>setup</code> and <code>draw</code>. Setup gets called once when the program begins and draw gets called again and again, as long as the program runs.

{% include editor.html filepath="/sketches/helloworld1/helloworld1.pde" references="void, setup_, draw_" %}