---
layout: exercise
chapter: Transform
title: Ornaments with transformations
---

Take a look at the example below:

{% highlight java %}
void setup() {
  size(400,400);
}

void draw() {
  shape(0,0);
  shape(100,0);
}

void shape(float x, float y) {
  pushMatrix();
  translate(x, y);
  ellipse(50, 50, 80, 80);
  popMatrix();
}
{% endhighlight %}

It draws this image:

<img src="{{site.url}}/img/shape-function.png">

Here, we define our own method called <code>shape(float x, float y);</code>. It is a method that takes two _parameters_ (x and y coordinates) and draws a shape relative to those coordinates. The catch is that with pushMatrix and popMatrix you can work with relative coordinates inside the shape-method. You can create a very complex pattern with the shape function and then just call shape function over and over again to create complex repetitive patterns.

The example below can give you some ideas. Try to edit the patterns inside shape-method to create something unique.

{% include editor.html filepath="/sketches/transform8/transform8.pde" references="pushMatrix_, popMatrix_, translate_, rotate_, scale_, sin_, radians_, rectMode_" %}