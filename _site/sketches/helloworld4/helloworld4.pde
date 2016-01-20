void setup() {
    size(512, 512);
}

void draw() {
    // create a decimal variable called radius
    // and store a value between 0-100 to the variable
    float radius = random(0, 100); 

    // Processing has variables called width and height, 
    // which you can use to get the width and height of the canvas 
    float x = random(0, width); // create decimal variable x and store random value betwen 0-width
    float y = random(0, height); // create decimal variable y and store random value betwen 0-height

    // Draw an ellipse. It is a circle, because width and height are equal
    ellipse(x, y, radius, radius); 
}