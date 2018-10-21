void drawStar(int lines, float radius, float cx, float cy, float weight, int starColor) {
  final float ANGLE_DELTA = TWO_PI / lines;
  stroke(starColor);
  strokeWeight(weight);
  float angle = 0.0;
  for (int i = 0; i < lines; ++i, angle += ANGLE_DELTA) {
    float x = cx + cos(angle) * radius;
    float y = cy + sin(angle) * radius;
    line(cx, cy, x, y);
  
    float previousAngle = angle - ANGLE_DELTA;
    float halfRadius = radius * 0.5f;
    float px = cx + cos(previousAngle) * halfRadius;
    float py = cy + sin(previousAngle) * halfRadius;
    line(px, py, x, y);
  }
}
