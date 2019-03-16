final int SIZE = 20;
final int HALF_SIZE = SIZE / 2;

int x, y;
int dx = 2,
    dy = 2;

void setup() {
  fullScreen();
  background(0);

  x = width / 2;
  y = height / 2;
}

void draw() {
  background(0);
  noStroke();

  fill(255);
  ellipse(x, y, SIZE, SIZE);
  x += dx; y += dy;
  if (x - HALF_SIZE < 0 || x + HALF_SIZE > width) dx = -dx;
  if (y - HALF_SIZE < 0 || y + HALF_SIZE > height) dy = -dy;
}
