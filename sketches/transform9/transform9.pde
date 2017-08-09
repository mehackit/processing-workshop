// An ornament animated with changing the diameter of the elements

// These global variables are used for animation
float diameter = 80;
float angle = 0;

void setup() {
  size(400, 400); 
}

//iterate through rows and columns
void draw() {
  background(200);
  for (int h = 0; h < 4; h++) { //row gets values 0, 1, 2 and 3
    for (int i = 0; i < 4; i++) { //column gets values 0, 1, 2 and 3
      shape(100*i, 100*h); //draw shape relative to given coordinates
    }
  }
  
  // diameter sets the diameter for the patterns drawn with shape-method
  diameter = diameter + sin(angle)*5; //sine function is used for generating alternating range
  angle = angle + 0.01; //increment the angle after every draw-loop
}

// Shape-method draws a pattern relative to the given coordinates
void shape(float x, float y) {
  pushMatrix(); //save current coordinate system
  translate(x, y); //move coordinate system
  rectMode(CENTER);
  noFill();
  // all these shapes will be moved based on the translate command
  rect(50, 50, diameter, diameter);
  ellipse(50, 50, diameter, diameter);
  ellipse(50, 50, diameter-20, diameter-20);
  ellipse(50, 50, diameter-40, diameter-40);
  ellipse(50, 50, diameter-60, diameter-60);
  ellipse(50-diameter/2, 50, diameter/2, diameter/2);
  ellipse(50+diameter/2, 50, diameter/2, diameter/2);
  ellipse(50, 50-diameter/2, diameter/2, diameter/2);
  ellipse(50, 50+diameter/2, diameter/2, diameter/2);
  popMatrix(); //return to the original coordinate system
}
