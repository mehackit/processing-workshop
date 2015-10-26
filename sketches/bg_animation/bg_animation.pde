color[] colors = {
    color(56, 144, 144, 100), 
    color(244, 126, 125, 100), 
    color(181, 208, 69, 100), 
    color(251, 131, 53, 100), 
    color(129, 192, 197, 100)
};

color bg = color(228, 228, 228);

ArrayList<Element> elements = new ArrayList<Element>();

int minSpeed = -3;
int maxSpeed = 3;

int minSize = 35;
int maxSize = 100;

int previousMouseX = 0;
int previousMouseY = 0;

boolean elementRemoved = false;

void setup() {
    size(900, 700);
    for (int i = 0; i < 10; ++i) {
        float radius = random(minSize, maxSize);
        elements.add(new Element(random(radius, width-radius), random(radius, height-radius), radius));
    }
}

void draw() {
    background(bg);
    for (int i = 0; i < elements.size(); ++i) {
        elements.get(i).update();
    }
    
    for (int i = 0; i < elements.size(); ++i) {
        for (int j = i; j < elements.size(); ++j) {
            if (dist(elements.get(i).location.x, elements.get(i).location.y, elements.get(j).location.x, elements.get(j).location.y) < elements.get(i).radius + elements.get(j).radius) {
                line(elements.get(i).location.x, elements.get(i).location.y, elements.get(j).location.x, elements.get(j).location.y);
            }
        }
    }
}


void mousePressed() {
    Element clickedElement = getElementIfClicked(mouseX, mouseY);
    if (clickedElement != null) {
        elements.remove(clickedElement);
        elementRemoved = true;
    } else {
        previousMouseX = mouseX;
        previousMouseY = mouseY;
    }
}
void mouseReleased() {
    if (elementRemoved) {
        elementRemoved = false;
    } else {
        float radius = random(minSize, maxSize);
        float x = mouseX;
        float y = mouseY;

        if (mouseX < radius) {
            x = radius;    
        } else if (mouseX > width - radius) {
            x = width - radius;
        }

        if (mouseY < radius) {
            y = radius;
        } else if (mouseY > height - radius) {
            y = height - radius;
        }

        if (previousMouseX - mouseX == 0 && previousMouseY - mouseY == 0) {
            elements.add(new Element(x, y, radius));
        } else {
            PVector velocity = new PVector(map(mouseX - previousMouseX, -width, width, -10, 10), map(mouseY - previousMouseY, -height, height, -10, 10));
            elements.add(new Element(x, y, radius, velocity));   
        }
    }
}

Element getElementIfClicked(int x, int y) {
    Element returnElement = null;
    for (Element e : elements) {
        if (dist(x, y, e.location.x, e.location.y) < e.radius) {
            returnElement = e;
            break;
        }
    }
    return returnElement;
}

class Element {

    PVector location;
    PVector velocity;
    float radius;
    color c = colors[int(random(colors.length))];
    
    Element(float x, float y, float radius) {
        this.location = new PVector(x, y);
        this.velocity = new PVector(random(minSpeed, maxSpeed), random(minSpeed, maxSpeed));
        this.radius = radius;
    }

    Element(float x, float y, float radius, PVector velocity) {
        this.location = new PVector(x, y);
        this.velocity = velocity;
        this.radius = radius;
    }

    void update() {
        location.add(velocity);
        
        //bounce
        if (location.x < radius || location.x > width-radius) {
            velocity.x = velocity.x * -1;
        }

        if (location.y < radius || location.y > height-radius) {
            velocity.y = velocity.y * -1;
        }

        stroke(0);
        fill(0);
        ellipse(location.x, location.y, 5, 5);
        fill(c);
        ellipse(location.x, location.y, radius * 2, radius * 2);
    }
}

