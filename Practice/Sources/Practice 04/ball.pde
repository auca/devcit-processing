final int RADIUS = 10;
final int DIAMETER = RADIUS * 2;

int x, y;
int dx = 5;
int dy = 5;

void setup() {
  fullScreen();
  background(0);
  fill(255);
  noStroke();
  
  x = width / 2;
  y = height / 2;
}

void draw() {
  background(0);

  ellipse(x, y, DIAMETER, DIAMETER);
  
  x += dx;
  if (x > width - RADIUS || x < RADIUS) {
    dx = -dx;
  }

  y += dy;
  if (y > height - RADIUS || y < RADIUS) {
    dy = -dy;
  }
}
