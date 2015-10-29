void setup() {
    size(512, 512);
    strokeWeight(10); 
    // call stoke weight here in setup because thre's no 
    // use making the same call in draw method on each frame
}

void draw() {
    // we could also dim the background on each frame,
    // instead of painting it with a solid color.

    // background() -method doesn't allow alpha values,
    // but we can draw a transparent rectangle on the
    // sreen on each frame and get a cool dimming effect:

    fill(255, 10); // set fill to very transparent white
    noStroke(); // turn outlines off
    // draw a transparent rectangle that covers the screen:
    rect(0, 0, width, height); 

    // create a decimal number variable and save a random number between 0-100
    float radius = random(0, 100); 

    // create and save random values between 0-255 for each color component
    float red = random(0, 255);
    float green = random(0, 255);
    float blue = random(0, 255);
    float alpha = random(0, 255);

    // create stroke color with the color components
    stroke(red, green, blue, alpha); 
    // create a bit different fill color from the previous components
    fill(255-red, 255-green, 255-blue, alpha); 
    
    //draw a circle with random x and y coordinates and random radius
    ellipse(random(0, height), random(0, width), radius, radius); 
}