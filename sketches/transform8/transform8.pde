void setup() {
  size(400, 400); 
}

void draw() {
  background(200);

  //iterate through rows and columns
  for (int row = 0; row < 4; row++) { //row gets values 0, 1, 2 and 3
    for (int column = 0; column < 4; column++) { //column gets values 0, 1, 2 and 3
      shape(100*column, 100*row); //draw shape relative to given coordinates
    }
  }
}

// Shape-method draws a pattern relative to the given coordinates
void shape(float x, float y) {
  pushMatrix(); //save current coordinate system
  translate(x, y); //move coordinate system
  rectMode(CENTER);
  noFill();
  // all these shapes will be moved based on the translate command
  rect(50, 50, 80, 80);
  ellipse(50, 50, 80, 80);
  ellipse(50, 50, 60, 60);
  ellipse(50, 50, 40, 40);
  ellipse(50, 50, 20, 20);
  ellipse(10, 50, 40, 40);
  ellipse(90, 50, 40, 40);
  ellipse(50, 10, 40, 40);
  ellipse(50, 90, 40, 40);
  popMatrix(); //return to the original coordinate system
}
