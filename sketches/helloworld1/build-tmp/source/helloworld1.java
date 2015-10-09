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

public class helloworld1 extends PApplet {

public void setup() {
   
}

public void draw() {
    fill(255, 10);
    rect(0, 0, width, height);

    fill(random(0,255), random(0,255), random(0,255));

    float r = random(1,100);
    rect(random(0,width), random(0,width), r, r);
}
  public void settings() {  size(512, 512); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "helloworld1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
