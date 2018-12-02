fullScreen();
background(0);
stroke(255);
strokeWeight(5);

final int RAY_COUNT = 16;
final float RADIUS = 300;
final float INNER_RADIUS = RADIUS * 0.4;

float angle = 0;
float deltaAngle = TWO_PI / RAY_COUNT;

float x = width / 2;
float y = height / 2;
float prevEndX = x + cos(angle - deltaAngle) * INNER_RADIUS;
float prevEndY = y + sin(angle - deltaAngle) * INNER_RADIUS;
for (int i = 0; i < RAY_COUNT; ++i, angle += deltaAngle) {
  float radius = i % 2 == 0 ? RADIUS : INNER_RADIUS;
  float endX = x + cos(angle) * radius;
  float endY = y + sin(angle) * radius;
  line(x, y, endX, endY);
  line(endX, endY, prevEndX, prevEndY);

  prevEndX = endX;
  prevEndY = endY;
}
