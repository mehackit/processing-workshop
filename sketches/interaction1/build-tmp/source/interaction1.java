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

float seed, x1, x2, y1, y2;

public void setup() {
   
    seed = random(10);
    x1 = noise(seed + 2) * width;
    y1 = noise(seed + 4) * height;
    x2 = noise(seed + 6) * width;
    y2 = noise(seed + 8) * height;
}

public void draw() {
    noStroke();
    fill(240, 3); //set fill to very transparent white
    rect(0, 0, width, height); 

    strokeWeight(5);
    stroke(map(mouseX, 0, width, 0, 255), map(mouseY, 0, width, 0, 255), 0);

    x1 = x2;
    y1 = y2;

    x2 = noise(seed) * width;
    y2 = noise(seed + 2) * height;

    seed += 0.05f;

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
