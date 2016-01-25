---
layout: exercise
chapter: Transform
title: Scaling
---

*Images and text from <a href="https://processing.org/tutorials/transform2d/" target="_blank">2D Transformations tutorial</a> by J David Eisenberg*
        
The final coordinate system transformation is scaling, which changes the size of the grid. Take a look at this example, which draws a square, then scales the grid to twice its normal size, and draws it again.

{% include editor.html filepath="/sketches/transform5/transform5.pde" references="scale_" %}

First, you can see that the square appears to have moved. It hasn’t, of course. Its upper left corner is still at (20, 20) on the scaled-up grid, but that point is now twice as far away from the origin as it was in the original coordinate system. You can also see that the lines are thicker. That’s no optical illusion—the lines really are twice as thick, because the coordinate system has been scaled to double its size. There is no law saying that you have to scale the x and y dimensions equally. Try using scale(3.0, 0.5) to make the x dimension three times its normal size and the y dimension only half its normal size.