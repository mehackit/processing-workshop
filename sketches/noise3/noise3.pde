// create variables and assign random values
// we'll use these as parameters for noise
float noise_x = random(0, 10);
float noise_y = random(0, 10);
float noise_r = random(0, 10);

void setup() {
    size(512, 512);
}

void draw() {
    // noise-function return a value between 0-1
    // multiply that with n and you get a value between 0-n
    float x = noise(noise_x) * width; 
    float y = noise(noise_y) * height;
    // you could also use map-function to change the range
    // map(value, low1, high1, low2, high2) takes a value, 
    // which is between low-high ant maps that value to low2-high2
    float r = map(noise(noise_r), 0, 1, 10, 100); // r is between 10-100
    rect(x, y, r, r);

    // increment the variables
    noise_x = noise_x + 0.02;
    noise_y = noise_y + 0.02;
    noise_r += 0.02; // this is just faster way of writing noise_r = noise_r + 0.02
}