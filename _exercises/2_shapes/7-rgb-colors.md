---
layout: exercise
chapter: Shapes
title: RGB Colors
---

<p><img src="{{site.baseurl}}/img/rgb.png" height="200px"></p>
<p>You can mix red, green, and blue to create colors. As it was with grayscale, each component gets a value between 0 and 255.</p>
<p><code>fill(255, 255, 0);</code> Fill with three parameters sets a red-green-blue color. This one is yellow.</p>
<p><code>fill(0, 255, 255, 200);</code> Fill with four parameters sets a RGB-color with transparency. This one is a little bit tansparent cyan.</p>
<p><code>background(255,0,0);</code> Covers the whole canvas with the specified color. This one is red.</p>
<p>You can turn off fill and stroke with <code>noStroke();</code> and <code>noFill();</code>. <code>strokeWeight(1);</code> sets the thikness of outlines.</p>

<p>Try out <code>fill</code>, <code>background</code>, <code>noStroke</code>, <code>noFill</code>, and <code>strokeWeight</code> to color the sketch below:</p>

{% include editor.html filepath="/sketches/shapes5/shapes5.pde" references="fill_, stroke_, background_, noFill_, noStroke_, strokeWeight_, line_, triangle_" %}