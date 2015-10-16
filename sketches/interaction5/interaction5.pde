void setup() {
    size(512, 512);
    strokeWeight(10);
}

void draw() {

}

void mouseMoved() {
    /**              width: 25
    *      +-------------------------+
    *      |            |            | h
    *      | (2,3)      |     (23,3) | e 
    *      |  .         |        .   | i 
    *      |------------|------------| g 
    *      |  .         |        .   | h 
    *      | (2,5)      |     (23,5) | t 
    *      |            |            | 7
    *      +-------------------------+
    *
    **/
    int upper_left_x = mouseX;
    int upper_left_y = mouseY;

    int upper_right_x = width - mouseX;
    int upper_right_y = mouseY;

    int lower_left_x = mouseX;
    int lower_left_y = height - mouseY;

    int lower_right_x = width - mouseX;
    int lower_right_y = height - mouseY;

    point(upper_left_x, upper_left_y);
    point(upper_right_x, upper_right_y);
    point(lower_left_x, lower_left_y);
    point(lower_right_x, lower_right_y);
}