size(200, 200);
background(255);

//draw grey rectangle
fill(192);
noStroke();
rect(40, 40, 40, 40);

//draw black rectangle
pushMatrix();
rotate(radians(45));
fill(0);
rect(40, 40, 40, 40);
popMatrix();
