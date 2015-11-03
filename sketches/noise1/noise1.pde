int r = 50;
float seed = 0;

void setup() {
    size(512, 400);
}

void draw() {
    background(228);   
    line(width/2, 0, width/2, height);
    fill(0);
    text("random position", 80, 20);
    text("position with noise", 330, 20);
    noFill();
    strokeWeight(2);
    rect(random(r, width / 2 - r), random(r, height - r), r, r);
    rect(width/2 + noise(seed) * (width / 2 - r), r + noise(seed+10) * (height - r), r, r);
    seed += 0.01;
}