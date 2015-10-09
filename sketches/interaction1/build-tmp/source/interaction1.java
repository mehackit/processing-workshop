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

public class interaction1 extends PApplet {

public void setup() {
   
}

public void draw() {
    noStroke();
    fill(255, 5); //set fill to very transparent white
    rect(0, 0, width, height); 

    strokeWeight(5);
    stroke(map(mouseX, 0, width, 0, 255), map(mouseY, 0, width, 0, 255), 0);
    int x1 = mouseX;
    int y1 = mouseY;
    int x2 = pmouseX;
    int y2 = pmouseY;

    line(x1, y1, x2, y2);
    line(width - x1, y1, width - x2, y2);
    line(width - x1, height -y1, width - x2, height - y2);
    line(x1, height - y1, x2, height - y2);
}
  public void settings() {  size(512, 512); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "interaction1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
