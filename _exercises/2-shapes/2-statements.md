---
layout: exercise
chapter: Shapes
title: Statements
---

A program is made of statements. A statement ends in a semi-colon (;). The statement below calls an ellipse-function, wich draws an ellipse:

<p class="center"><code>ellipse(20, 50, 10, 40);</code></p>

Some functions need parameters. Ellipse-function needs four parameters. First and second parameter set the x and y coordinate, third and fourth parameter set the width and height of the ellipse. Parameters are separated by comma (,).

<pre class="center">
             parameters      
                 |           
function name    |           
     |           |           
     |           |           
     |    /------+-----\     
  ellipse(20, 50, 10, 40);   
          |   |   |    |     
          x   y  width |     
                       |     
                     height  
</pre>

## Let's draw some shapes!

Try the example in the editor below. Can you draw a circle with the ellipse-function?

{% include editor.html filepath="/sketches/shapes1/shapes1.pde" references="ellipse_, rect_" %}