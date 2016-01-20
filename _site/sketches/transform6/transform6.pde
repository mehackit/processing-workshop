float x = 0.0;

void setup() {
    size(500, 500);
    fill(0);
}

void draw() {
    background(255);
    translate(width/2, height/2);
    scale(sin(x)+1); 
    ellipse(0, 0, 100, 100); 
    x = x + 0.03;
}