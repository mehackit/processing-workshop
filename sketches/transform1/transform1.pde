float x = 0.0;;

void setup() {
    size(500, 500);
}

void draw() {
    // translate moves the whole coordinate sytem to the gizen location
    translate(200, 200); // try different values to see how translate works
    scale(x);
    // now point (0,0) is actually at (200,200) because the coordinate system has been moved
    rect(0, 0, 100, 100);
    ellipse(25, 25, 30, 30);
    ellipse(75, 25, 30, 30);
    ellipse(25, 25, 5, 5);
    ellipse(75, 25, 5, 5);
    line(10, 80, 90, 80);
    x += 0.01;
}