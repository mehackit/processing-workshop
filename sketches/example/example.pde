//here

int i = 0; 

void setup() {
  size(400, 400); 
  background(255);
  smooth();
  strokeWeight(15);
  frameRate(24);
} 

void draw() {
  background(255);
  fill(0);
  text(mouseX + "\n" + mouseY, 100, 100);
}

