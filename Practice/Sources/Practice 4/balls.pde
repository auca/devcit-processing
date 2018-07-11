final int BALL_COUNT = 100;

final int BALL_MIN_SIZE = 4;
final int BALL_MAX_SIZE = 20;

final int BALL_MIN_VELOCITY = -5;
final int BALL_MAX_VELOCITY = 5;

int x[] = new int[BALL_COUNT];
int y[] = new int[BALL_COUNT];
int dx[] = new int[BALL_COUNT];
int dy[] = new int[BALL_COUNT];
int size[] = new int[BALL_COUNT];

void setup() {
  size(1000, 500);
  
  for (int i = 0; i < size.length; ++i) {
    size[i] = (int) random(BALL_MIN_SIZE, BALL_MAX_SIZE);
  }
  for (int i = 0; i < x.length; ++i) {
    x[i] = (int) random(size[i] / 2, width - size[i] / 2);
  }
  for (int i = 0; i < y.length; ++i) {
    y[i] = (int) random(size[i] / 2, height - size[i] / 2);
  }
  for (int i = 0; i < dx.length; ++i) {
    dx[i] = (int) random(BALL_MIN_VELOCITY, BALL_MAX_VELOCITY);
  }
  for (int i = 0; i < dy.length; ++i) {
    dy[i] = (int) random(BALL_MIN_VELOCITY, BALL_MAX_VELOCITY);
  }
}

void draw() {
  background(0);
  
  for (int i = 0; i < BALL_COUNT; ++i) {
    x[i] += dx[i];
    y[i] += dy[i];
    
    int halfSize = size[i] / 2; 
    if (x[i] < halfSize || x[i] > width - halfSize) {
      dx[i] *= -1;
    }
    if (y[i] < halfSize || y[i] > height - halfSize) {
      dy[i] *= -1;
    }
    
    fill(255);
    ellipse(x[i], y[i], size[i], size[i]);
  }
}
