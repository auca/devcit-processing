size(1000, 500);
background(0);
stroke(255, 0, 0);
strokeWeight(2);

final int LINE_COUNT = 100;
final float RADIUS = 200;
final float ANGLE_DELTA = TWO_PI / LINE_COUNT;

float angle = 0;
float x = width / 2;
float y = height / 2;

for (int i = 0; i < LINE_COUNT; ++i) {
  float endX = x + cos(angle) * RADIUS;
  float endY = y + sin(angle) * RADIUS;
  line(x, y, endX, endY);
  
  angle += ANGLE_DELTA;
}
