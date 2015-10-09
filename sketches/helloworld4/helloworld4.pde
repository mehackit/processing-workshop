void setup() {
    size(512, 512);
}

void draw() {
    float x = random(0, width);
    float y = random(0, height);
    float radius = random(0, 100);
    ellipse(x, y, radius, radius); 
}