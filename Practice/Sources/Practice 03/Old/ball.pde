final int SIZE = 100;
final int HALF_SIZE = SIZE / 2;

int x, y;
int dx = 1,
    dy = 1;

void setup() {
  size(1000, 500);
  
  x = width / 2;
  y = height / 2;
}

void draw() {
  background(0);
  
  ellipse(x, y, SIZE, SIZE);
  
  x += dx;
  y += dy;
  if (x - HALF_SIZE < 0 || x + HALF_SIZE > width) {
    dx = -dx;
  }
  if (y - HALF_SIZE < 0 || y + HALF_SIZE > height) {
    dy = -dy;
  }
}
