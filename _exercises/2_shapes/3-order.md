---
layout: exercise
chapter: Shapes
title: Order
---

Run the example below. You should see a circle.

{% include editor.html filepath="/sketches/shapes2/shapes2.pde" references="ellipse_" %}


## Order matters

Change the order of the statements to look like following (use ctrl+x & ctrl+v):

{% highlight java %}
ellipse(40, 45, 50, 50);
ellipse(50, 50, 20, 20);
{% endhighlight %}

What happens and why?