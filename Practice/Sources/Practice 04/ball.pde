final int SIZE = 20;
final int HALF_SIZE = SIZE / 2;

int x, y;
int dx = 5,
    dy = 5;

void setup() {
  size(900, 500);
  background(0);
  
  x = width / 2;
  y = height / 2;
}

void draw() {
  background(0);
  fill(255);
  noStroke();
  ellipse(x, y, SIZE, SIZE);
  x += dx;
  if (x > width - HALF_SIZE) {
    dx = -dx;
  }
  if (x < 0 + HALF_SIZE) {
    dx = -dx;
  }

  y += dy;
  // TODO
}
