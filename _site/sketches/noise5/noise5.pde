float noise_y = 0; // create variable for noise

void setup() {
    size(500, 500);
}

void draw() {
    background(255);

    float x = 0;
    // while loop repeats as long as the condition (in this case "x is smaller than 500") is true
    while (x < width) {
        // x gets values betwee 0-500. Divide x by 100 so incremented by 0.01 on each iteration
        // use two parameters with the noise function to create different curve on each frame
        // map the noise value to 200-400
        float y = map(noise(x/100, noise_y), 0, 1, 200, 400);
        point(x, y);
        x = x + 1;
    } 
    // when x is 500 the program will move forward. In this case increment noise_y
    noise_y = noise_y + 0.01;
}