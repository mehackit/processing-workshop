float noise_y = 0; // create variable for noise

void setup() {
    size(500, 500);
}

void draw() {
    background(255);
    // the for-loop below behaves exactly as the while-loop in the previous examples
    // for-loop is just a more convinient way to create and increment the variable used in while-loop

    // float x = 0; creates decimal variable x and assigns value 0 to it
    // x < width; is a similar condition you used in while loop. The loop repeats as long as the condition is true
    // x = x + 1 increments the x in the end of each iteration. Same thing you wrote at the end of while-loop
    for (float x = 0; x < width; x = x + 1) {
        float y = map(noise(x/100, noise_y), 0, 1, 200, 400);
        point(x, y);
    }
    // when x is 500 the program will move forward. In this case increment noise_y
    noise_y = noise_y + 0.01;
}