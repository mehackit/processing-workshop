// this variable is visible everywhere in the sketch
int radius = 1; // create an integer variable and assign a value to it

void setup() {
    size(512, 512);
    background(255); //set the background white
    frameRate(10); // set max framerate to 10 frames per second
}

void draw() {
    // these variables are only visible inside draw()
    // create random color components.
    float r = random(0, 255);
    float g = random(0, 255);
    float b = random(0, 255);
    stroke(r, g, b);
    fill(r, g, b);

    // draw circle to the center of the screen
    ellipse(width/2, height/2, radius, radius);

    // assign a new value to r. Increase it by 1.
    // next time the circle will be bigger
    radius = radius + 1;
}