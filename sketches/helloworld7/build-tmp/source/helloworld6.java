import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class helloworld6 extends PApplet {

public void setup() {
   
}

public void draw() {
    //background(255); //white background

    // we could also dim the background on each frame,
    // instead of painting it with a solid color.

    // background() -method doesn't allow alpha values,
    // but we can draw a transparent rectangle on the
    // sreen on each frame and get a cool dimming effect:

    fill(255, 10); //set fill to very transparent white
    stroke(255, 10); // set stroke to very transparent white
    //draw a transparent rectangle that covers the screen:
    rect(0, 0, width, height); 

    float x = random(0, width);
    float y = random(0, height);
    float radius = random(0, 100);

    float red = random(0, 255);
    float green = random(0, 255);
    float blue = random(0, 255);
    float alpha = random(0, 255);

    fill(red, green, blue, alpha);
    stroke(red, green, blue, alpha);
    
    ellipse(x, y, radius, radius); 
}
  public void settings() {  size(512, 512); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "helloworld6" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
