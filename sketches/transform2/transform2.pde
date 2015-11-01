void setup() {
    size(500, 500);
}

void draw() {
    // x gets values 0, 100, 200, 300 and 400 in the for-loop below
    for (int x = 0; x < width; x = x + 100) {
        drawFace(x, 200); // call drawFace-function, which draws a face to the given position
    }
}

// drawFace-function draws a face to the x and y coordinates that are given as parameters.
void drawFace(int x, int y) {
    pushMatrix(); // save the current position of the coordinate system
    translate(x, y); // move the coordinate system to the given position
    // now we can draw the shape, using (0,0) as the reference point
    rect(0, 0, 100, 100);
    ellipse(25, 25, 30, 30);
    ellipse(75, 25, 30, 30);
    ellipse(25, 25, 5, 5);
    ellipse(75, 25, 5, 5);
    line(10, 80, 90, 80);
    popMatrix(); // restore coordinate system to the previous position
}