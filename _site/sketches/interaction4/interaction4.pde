void setup() {
    size(512, 512);
    strokeWeight(10);
}

void draw() {

//                                   width: 70
// +-----------------------------------|-----------------------------------+  
// |                                   |                                   |  
// |                                   |                                   |  
// |(mouseX, mouseY)                   |          (width - mouseX, mouseY) |  
// |   (5,4)                           |                          (65,4)   |  
// |     .                             |                             .     | h
// |                                   |                                   | e
// |                                   |                                   | i
// |                                   |                                   | g
// |                                   |                                   | h
// |-----------------------------------|-----------------------------------| t
// |                                   |                                   | :
// |                                   |                                   | 1
// | (mouseX, height - mouseY)         | (width - mouseX, height - mouseY) | 8
// |   (5,14)                          |                          (65,14)  |  
// |     .                             |                             .     |  
// |                                   |                                   |  
// |                                   |                                   |  
// |                                   |                                   |  
// |                                   |                                   |  
// +-----------------------------------|-----------------------------------+  

    point(mouseX, mouseY);
    point(width - mouseX, mouseY);
    point(mouseX, height - mouseY);
    point(width - mouseX, height - mouseY);
}