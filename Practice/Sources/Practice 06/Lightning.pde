/*
  1. Выбираем размер шага.
  2. Выбираем начальную точку x, y.
  3. Выбираем конечную точку endX, endY.
  4. Выбрать случайное число в неком диапазоне от отрицательного
     числа до такого же положительного числа размера шага для x и y.
  5. Делаем шаг.
 */

size(1000, 500);
background(0);
stroke(255);

final float STEP_LENGTH = 2;
final float SPEED = 0.3;
float x = 0;
float y = 0;
float endX = width - 1;
float endY = height - 1;

while (x != endX || y != endY) {
  float dx = (endX - x);
  float dy = (endY - y);
  float length = sqrt(dx * dx + dy * dy);
  dx /= length;
  dy /= length;
  dx *= SPEED;
  dy *= SPEED;

  float xStep = random(-STEP_LENGTH, STEP_LENGTH);
  float yStep = random(-STEP_LENGTH, STEP_LENGTH);
  float nextX = constrain(x + dx + xStep, 0, width - 1);
  float nextY = constrain(y + dy + yStep, 0, height - 1);
  line(x, y, nextX, nextY);
  x = nextX;
  y = nextY;
}
