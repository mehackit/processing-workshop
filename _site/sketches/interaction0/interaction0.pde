float seed, x1, x2, y1, y2;

void setup() {
    size(512, 512);
    seed = random(10);
    x1 = noise(seed + 2) * width;
    y1 = noise(seed + 4) * height;
    x2 = noise(seed + 6) * width;
    y2 = noise(seed + 8) * height;
    background(51);
}

void draw() {
    noStroke();
    fill(5, 5); //set fill to very transparent balck

    rect(0, 0, width, height); 

    strokeWeight(10);
    float rMultiply = map(mouseX, 0, width, 1.3, 2.5);
    float gMultiply = map(mouseX, 0, width, 0, 2);
    stroke(17*rMultiply, 177*gMultiply, 167);

    x1 = pmouseX;
    y1 = pmouseY;
    x2 = mouseX;
    y2 = mouseY;

    // x1 = x2;
    // y1 = y2;

    // x2 = noise(seed) * width;
    // y2 = noise(seed + 2) * height;

    // seed += 0.05;

    line(x1, y1, x2, y2);
    line(width - x1, y1, width - x2, y2);
    line(width - x1, height -y1, width - x2, height - y2);
    line(x1, height - y1, x2, height - y2);
}