void setup() {
    size(512, 512);
    strokeWeight(10);
}

void draw() {

}

void mouseMoved() {
    point(mouseX, mouseY);
    point(width - mouseX, mouseY);
}