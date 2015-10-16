void setup() {
    size(512, 512);
    strokeWeight(5);
    stroke(255, 96, 82);
}

void draw() {
    if (mousePressed) {
        line(mouseX, mouseY, pmouseX, pmouseY);   
    }
}
