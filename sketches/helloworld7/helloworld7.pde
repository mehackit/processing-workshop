void setup() {
    size(512, 512);
}

void draw() {
    //background(255); //white background

    // we could also dim the background on each frame,
    // instead of painting it with a solid color.

    // background() -method doesn't allow alpha values,
    // but we can draw a transparent rectangle on the
    // sreen on each frame and get a cool dimming effect:

    fill(255, 10); //set fill to very transparent white
    stroke(255, 10); // set stroke to very transparent white
    //draw a transparent rectangle that covers the screen:
    rect(0, 0, width, height); 

    float x = random(0, width);
    float y = random(0, height);
    float radius = random(0, 100);

    float red = random(0, 255);
    float green = random(0, 255);
    float blue = random(0, 255);
    float alpha = random(0, 255);

    fill(red, green, blue, alpha);
    stroke(red, green, blue, alpha);
    
    ellipse(x, y, radius, radius); 
}