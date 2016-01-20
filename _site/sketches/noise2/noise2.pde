float x = 0; // create variable and assign a value

void setup() {
    size(500, 100);
}

void draw() {
    // generate x-coordinate with noise. 
    // Noise returns a value between 0-1 so multiply that with width
    rect(noise(x)*width, 30, 40, 40);
    x = x + 0.01; // increment x a little bit. Try different values here.
}