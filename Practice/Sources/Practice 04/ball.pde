final int SIZE = 20;
final int HALF_SIZE = SIZE / 2;

int x, y;
int dx = 5,
    dy = 5;

void setup() {
  fullScreen();
  background(0);
  noStroke();
  
  x = width / 2;
  y = height / 2;
}

void draw() {
  background(0);
  
  // Ball 1

  rectMode(CENTER);
  rect(x, y, SIZE, SIZE);
  x += dx; y += dy;

  if (x >= width - HALF_SIZE || x < HALF_SIZE) {
    dx = -dx;
  } 
  if (y >= height - HALF_SIZE || y < HALF_SIZE) {
    dy = -dy;
  }
}
