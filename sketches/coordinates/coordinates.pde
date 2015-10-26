void setup() {
    size(400, 400);
}

void draw() {
    background(255);
    stroke(0);
    fill(0);
    if (mouseX >= 0 && mouseX <= width && mouseY >= 0 && mouseY <= height) {
        text("X: " + mouseX + "\nY: " + mouseY, mouseX, mouseY+30);   
    }
}