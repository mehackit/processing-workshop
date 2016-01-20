void setup() {
    size(512, 512);
    background(0); //paint the background black

}

void draw() {
    // set stroke to a random shade of white between 240-255 with a random transparency between 1-20.
    stroke(random(240, 255), random(1, 20));

    // draw a line from the center of the canvas to a random point on the canvas
    line(width/2, height/2, random(0, width), random(0, height));
    // width and height are variables that refer to the width and height set with the size function
}