float z = 0; // create variable for noise z

void setup() {
    size(500, 500);
}

void draw() {
    background(255);

    // float y = 0; creates decimal variable y and assigns value 0 to it
    // loop repeats as long as y < height; is true
    // y = y + 20 increments y in the end of each iteration.
    for (float y = 0; y < height; y = y + 20) {
        // float x = 0; creates decimal variable x and assigns value 0 to it
        // loop repeats as long as x < width; is true
        // x = x + 1 increments the x in the end of each iteration.
        for (float x = 0; x < width; x = x + 1) {
            point(x, y + map(noise(x/100, y/100, z), 0, 1, -100, 100));
        }
    }
    // when y is 500 the program will move forward. In this case increment z
    z = z + 0.03;
}