float z = 0; // create variable for noise y-coordinate

void setup() {
    size(512, 512);
    background(10);
}

void draw() {
    //fade background
    fill(10,100);
    noStroke();
    rect(0, 0, width, height);    

    stroke(255, 80); // set a bit trasparent stroke color

    // here's two nested for loops. The outer for loop iterates over y-coordinate.
    // the inner for loop iterates over x-coordinate and draws the curve.
    // the outer for loop repeats the inner for loop with different y-coordinate
    // this way we can draw many noise-curves with different y-coordinate

    // on each frame, 20 noise curves are drawn.
    for (float y = 0; y < 100; y += 5) {
        for (float x = 0; x < 400; ++x) {
            // noise gets three parameters: x, y and z. z is incremented at the end of each frame
            point(x + y + 15, y + 150 + noise(x/50, y/50, z) * 100);
        }
    }

    // increment z, so that the next frame's 20 curves will be slightly different than the previous
    z += 0.05;
}