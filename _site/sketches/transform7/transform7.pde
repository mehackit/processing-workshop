float sinX = 0; // used for sin
float angle1 = 0; 
float angle2 = 0;

void setup() {
    size(512, 512);
    rectMode(CENTER); // rectangles are drawn around center poin
}

void draw() {
    // fade background
    fill(200, 10);
    noStroke();
    rect(width/2, height/2, width, height);

    fill(10);    
    stroke(255);

    translate(mouseX, mouseY); //move the coordinate system to mouse position
    rotate(radians(angle1)); // rotate the whole coordinate system
    // draw rectangles relatively to the new coordinate system position
    drawSpinningRect(-50, 0, 25); 
    drawSpinningRect(0, -50, 25);
    drawSpinningRect(50, 0, 25);
    drawSpinningRect(0, 50, 25);

    // increment the variables
    angle1 = angle1 + 1;
    angle2 = angle2 - 2;
    sinX += 0.03;
    
    // the coordinate system will reset to original position when draw runs again
}

// draws a single spinning rectangle to the given position
void drawSpinningRect(int x, int y, int r) {
    pushMatrix(); // save the current coordinate system
    translate(x, y); // move the coordinate sytem to new position
    rotate(radians(angle2)); // rotate the new coordinate system
    scale(sin(sinX)+1.5); // scale the coordinate system
    rect(0, 0, r, r); // draw a rectangle
    popMatrix(); // load the saved coordinate system
}