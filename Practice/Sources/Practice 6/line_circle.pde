fullScreen();
background(0);

final int LINES = 100;
final float RADIUS = 300;
final float ANGLE_ROTATION = TWO_PI / LINES;

float cx = width * 0.5;
float cy = height * 0.5;

stroke(255, 0, 0);
strokeWeight(2);

//float angle = 0.0; int i = 0;
//while (angle < TWO_PI) {
//  float selectedRadius;
//  if (i % 2 == 0) {
//    selectedRadius = RADIUS;
//  } else {
//    selectedRadius = RADIUS * 0.5;
//  }

//  float endX = cx + cos(angle) * selectedRadius;
//  float endY = cy + sin(angle) * selectedRadius;
//  line(cx, cy, endX, endY);
  
//  angle += ANGLE_ROTATION;
//  ++i;
//}

float angle = 0.0;
for (int i = 0; i < LINES; ++i, angle += ANGLE_ROTATION) {
  float selectedRadius = i % 2 == 0 ? RADIUS : RADIUS * 0.5;
  float endX = cx + cos(angle) * selectedRadius;
  float endY = cy + sin(angle) * selectedRadius;
  line(cx, cy, endX, endY);
}
