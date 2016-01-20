int angle = 0;

void setup() {
    size(200, 200);
    fill(192);
    noStroke();
}

void draw() {
    background(255);

    pushMatrix();
    // move the origin to the pivot point
    translate(100, 100); 

    // then pivot the grid
    rotate(radians(angle));

    // and draw the square at the origin
    fill(0);
    rect(0, 0, 40, 40);
    popMatrix();

    // increment angle
    angle = angle + 1;
}