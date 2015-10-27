int numOfArcs = 10;
float vertexInc = 0.15;

Arc[] arcs;
color[] colors;

void setup() {
    size(512, 512, P2D);

    arcs = new Arc[numOfArcs];
    colors = new color[6];
    colors[0] = color(17, 177, 167);
    colors[1] = color(255, 120, 100);
    colors[2] = color(140, 216, 216);
    colors[3] = color(234, 196, 83);
    colors[4] = color(255, 96, 82);
    colors[5] = color(255, 125, 140);
    
    createArcs();
}

void draw() {
    background(51);
    vertexInc = map(mouseX, 0, width, 0.15, 2);
    for (int i = 0; i < numOfArcs; ++i) {
        arcs[i].update();
    }
}

void mousePressed() {
    createArcs();
}

void createArcs() {
    for (int i = 0; i < numOfArcs; ++i) {
        arcs[i] = new Arc(width/2, height/2);
    }
}

class Arc {
    int x, y, radius, thickness;
    float startRad, lengthInRad, speed;
    float rotation = 0;
    color c;

    Arc(int x, int y) {
        this.x = x;
        this.y = y;
        this.radius = 50 * int(random(0, 5));
        this.startRad = radians(random(360));
        this.lengthInRad = radians(random(15, 300));
        this.thickness = int(random(1, 50));
        this.speed = random(-4, 4);
        this.c = colors[int(random(6))];
    }

    Arc(int x, int y, int radius, float startDegree, float lengthInDegrees, int thickness, float speed, color c) {
        this.x = x;
        this.y = y;
        this.radius = radius;
        this.startRad = radians(startDegree);
        this.lengthInRad = radians(lengthInDegrees);
        this.thickness = thickness;
        this.speed = speed;
        this.c = c;
    }

    void update(){
        pushMatrix();

        translate(x, y);
        rotate(radians(rotation));

        stroke(c);
        fill(c);

        beginShape(QUAD_STRIP);
        for (float angle = startRad; angle < startRad + lengthInRad; angle += vertexInc) {
            vertex(cos(angle) * radius, sin(angle) * radius);
            vertex(cos(angle) * (radius + thickness), sin(angle) * (radius + thickness));   
        }
        endShape();
        
        popMatrix();

        rotation += speed;
    }
}
