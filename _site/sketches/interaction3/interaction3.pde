void setup() {
    size(512, 512);
    strokeWeight(10);
}

void draw() {
    point(mouseX, mouseY); //this statement draws a point to the original mouse position
    point(width - mouseX, mouseY); //this statemet draws a point to the vertically mirrored position
}