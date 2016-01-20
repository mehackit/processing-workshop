---
layout: exercise
chapter: Shapes
title: Statements
---

# Statements

A program is made of statements. A statement ends in a semi-colon (;). The statement below calls an ellipse-function, wich draws an ellipse:

<p class="center"><code>ellipse(20, 50, 10, 40);</code></p>

Some functions need parameters. Ellipse-function needs four parameters. First and second parameter set the x and y coordinate, third and fourth parameter set the width and height of the ellipse. Parameters are separated by comma (,).

<pre style="text-align: center">
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

Try the example in the editor below. Can you draw a circle with the ellipse-function?

<div class="editor-wrapper">
  <div class="display">
    <canvas class="canvas" id="shapes1"></canvas>
  </div>

  <div class="controls">
    <button class="editor_button" id="btn_start">Start</button>
    <button class="editor_button" id="btn_stop">Stop</button>        
  </div>

  <div class="editor-container">
    <div id="editor" filepath="/sketches/shapes1/shapes1.pde"></div>
  </div>

  <div class="reference">
    <b>Reference</b><br/>
    <a href="https://processing.org/reference/ellipse_.html" target="p5ref">ellipse</a><br/>
  </div>
</div> <!-- editor-wrapper -->