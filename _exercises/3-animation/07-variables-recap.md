---
layout: exercise
chapter: Animation
title: Variables recap
---

Lets recap the most important issues regarding variables.

## Create variable and assign new values

{% highlight java %}
float number = 100;   // create new variable called float and set its value as 100
number = 40;          // set the value as 40
number = 40/2;        // set the value as 40/2, which is 20
number = number + 2;  // set the value as number + 2 which is 20 + 2 which is 22
number = number * 2;  // set the value as number * 2 which is 22 * 2 which is 44
{% endhighlight %}

## Variable types

- int : whole number, for example 0, -10, 255 or 2018584.
- char : character, for example 'a', 'b' or 't'.
- float : decimal number, for example 23.1, 1.0 or -4.2.
- color : color value, for example color(0, 22, 250) or #FFCC00.
- boolean : true or false
- String : text, for example "Hi!" or "Game over".

## Variable visibility

What's the difference between these two programs?

{% highlight java %}
float x = 0;

void setup() {
  size(400,400);
}

void draw() {
  ellipse(x, height/2, 50, 50);
  x = x + 1;
}
{% endhighlight %}

{% highlight java %}
void setup() {
  size(400,400);
}

void draw() {
  float x = 0;
  ellipse(x, height/2, 50, 50);
  x = x + 1;
}
{% endhighlight %}

