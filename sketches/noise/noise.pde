boolean animate_noise = true;

color bg_color = color(250);
color cordinates_color = color(0);
color cordinates_limit_color = color(200, 100);
color noise_color = color(200, 0, 0);
color noise_color_light = color(150, 100);
color cordinate_annotation_color = color(150, 0, 0, 100);

int padding = 20;
int origo_x = 50;
int origo_y = 200;
int cordinate_height = 250;
int noise_height = 150;
int animate_x = 0;
float noise_d = 100;
int noise_selector_x = 314;

int time = -99;
int delay = 50;

int code_x = origo_x;
int code_y = 350;

void setup() {
    size(600, 600);
}

void draw() {
    background(bg_color);
    draw_increment_control();
    drawCordinates(origo_x, origo_y, cordinate_height);
    drawCode();
    drawNoise(origo_x, origo_y);
}

void draw_increment_control() {
    fill(0);
    text("Select increment to x_seed:", origo_x, cordinate_height);
    stroke(0);
    fill(200);
    rect(origo_x, cordinate_height + 10, width - origo_x - padding, 50);
    if (mouseX > origo_x && mouseX < width - padding && mouseY > cordinate_height + 10 && mouseY < cordinate_height + 10 + 50) {
        noise_d = map(mouseX, origo_x, width - padding, 1, 200);
        noise_selector_x = mouseX;
    }
    line(noise_selector_x, cordinate_height + 10, noise_selector_x, cordinate_height + 10 + 50);
    fill(0);
    text(1.0 / noise_d, noise_selector_x + 3, cordinate_height + 40);
}

void drawCordinates(int origo_x, int origo_y, int cordinate_height) {
    fill(0);
    text("x", width - 10, origo_y + 3);
    text("y", origo_x - 3, 12);
    text("1", 5, origo_y - noise_height + 3);
    text("0", 5, origo_y + 3);
    stroke(cordinates_color);
    line(origo_x, padding, origo_x, cordinate_height - padding);
    line(padding, origo_y, width - padding, origo_y);
    stroke(cordinates_limit_color);
    line(padding, origo_y-noise_height, width - padding, origo_y-noise_height);

}

void drawCode() {
    fill(0);
    String code = "float x_seed = 0;\n\nvoid setup() {\n    size(530, 30);\n}\n\nvoid draw() {\n    background(255);\n    float x = noise(x_seed) * width;\n    rect(x, 10, 10, 10);\n    x_seed = x_seed + " + 1 / noise_d +";\n}";
    text(code, code_x, code_y);
}

void drawExplanation(float value_x, float value_noise) {
    fill(0);
    String x = ("x_seed: " + value_x);
    text(x, value_x * noise_d + 55, origo_y + 12);
    String y = ("noise(" + value_x + "): " + value_noise);
    text(y, value_x * noise_d + 55, origo_y - value_noise * noise_height - 2);
}

void drawNoise(int origo_x, int origo_y) {
    stroke(noise_color_light);
    for (int x = 0; x < width - padding - origo_x; ++x) {
        point(x + origo_x, origo_y - noise(x / noise_d)*noise_height);
    }

    stroke(noise_color);
    for (int x = 0; x < animate_x; ++x) {
        point(x + origo_x, origo_y - noise(x / noise_d)*noise_height);
        if (x == animate_x - 1) {
            stroke(cordinate_annotation_color);
            line(x + origo_x, origo_y, x + origo_x, origo_y - noise(x / noise_d)*noise_height);
        }
    }

    drawExplanation(animate_x / noise_d, noise(animate_x / noise_d));
    draw_rect(noise(animate_x / noise_d));
    

    if (millis() - time > delay) {
        if (animate_x < width - padding - origo_x) {
            animate_x++;
        } else {
            animate_x = 0;
        }
        
        time = millis();
    }
}

void draw_rect(float x) {
    stroke(0);
    fill(255);
    rect(origo_x, 520, width - origo_x - padding, 30);
    rect(origo_x + x * (width - origo_x - padding), 520 + 10, 10, 10);
    fill(0);
    String str = "noise(x_seed) * width: \n" + x * (width - origo_x - padding);
    text(str, origo_x + x * (width - origo_x - padding) + 15, 520 + 11);
}