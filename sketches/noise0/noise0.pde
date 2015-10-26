float z = random(10);

void setup() {
    size(512, 512);
    background(10);
}

void draw() {
    fill(10,100);
    noStroke();
    rect(0, 0, width, height);    

    stroke(255, 80);
    for (float y = 0; y < 100; y += 5) {
        for (float x = 0; x < 400; ++x) {
            point(x + y + 15, y + 150 + noise(x/50, y/50, z) * 100);
        }
    }
    z += 0.05;
}