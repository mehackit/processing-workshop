void setup() {
    size(512, 512);
}

void draw() {
    //background(255); //paint the screen white in the beginning of each frame

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