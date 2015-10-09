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

public class helloworld5 extends PApplet {

public void setup() {
   
}

public void draw() {
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
    String[] appletArgs = new String[] { "helloworld5" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
