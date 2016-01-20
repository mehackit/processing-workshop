void setup() {
    size(512, 512);
    strokeWeight(5);
    stroke(255, 96, 82);
}

void draw() {
    // the '==' operator checks if the left side equals to the right side. 
    // You can try to change 'true' to false
    if (mousePressed == true) { 
        line(mouseX, mouseY, pmouseX, pmouseY);   
    }
}
