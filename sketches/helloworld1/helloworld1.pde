void setup() {
    size(512, 512);
}

void draw() {
    stroke(255);
    fill(255, 8);
    rect(0, 0, width, height);

    fill(random(0,255), random(0,255), random(0,255));

    float r = random(1,100);
    rect(random(0,width), random(0,width), r, r);
}