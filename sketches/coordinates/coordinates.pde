void setup(){
  size(500, 500);
  background(255);
}
 
void draw(){
   
  strokeWeight(1);
  fill(255);
  rect(0,0, width, height);
  fill(0);
  stroke(150);
     
    for (int x = 0; x < width/10; x++){
      line(x*10, 0, x*10, width);
    }
 
    for (int y = 0; y < height/10; y++){
      line(0, y*10, height, y*10);
    }
 
    stroke(0);
    strokeWeight(3);
    line(10, 10, 10, width - 10);
    line(10, 10, height - 10, 10);
 

    textSize(24);
    text("X", width-20, 40);
    text("Y", 20, height-10);
    textSize(20);

    int xPos = mouseX - 10;
    int yPos = mouseY - 10;
    
    if (mouseX < 10) {
        xPos = 0;
    }

    if (mouseY < 10) {
        yPos = 0;
    }
    ellipse(xPos + 10, yPos + 10, 1, 1);
    text("x: " + (xPos) + " y: " + (yPos) + "", xPos + 10, yPos + 30);
}
