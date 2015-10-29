void setup() {
    size(512, 512);
    // call stoke weight here in setup because thre's no 
    // use making the same call in draw method on each frame
    strokeWeight(10); 
}

void draw() {
    // create a decimal number variable and assign a random number between 0-100
    float radius = random(0, 100); 

    // create and assign random values between 0-255 for each color component
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

    // assign a new random number between 0-100 to radius
    radius = random(0, 100); 

    //draw a rectangle with random x and y coordinates and the new random radius
    rect(random(0, height), random(0, width), radius, radius); 
}