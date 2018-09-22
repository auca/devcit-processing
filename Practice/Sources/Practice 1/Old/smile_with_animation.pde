void setup() {
  // Окно программы
  size(500, 500);
}

void draw() {
  background(0);
  drawSmile(
    (int) random(width),
    (int) random(height),
    (int) random(200),
    0xFF000000 | (int) random(16581375)
  );

  delay(100); // Задержка между рисованием в миллисекундах.
}

void drawSmile(int faceX, int faceY, int faceSize, int faceColor) {
  // Лицо
  fill(faceColor);
  ellipse(faceX, faceY, faceSize, faceSize);

  // Глаза
  int eyeXShift = (int) (faceSize / 6);
  int eyeYShift = (int) (faceSize / 6);
  int leftEyeX  = faceX - eyeXShift;
  int rightEyeX = faceX + eyeXShift;
  int eyesY = faceY - eyeYShift;
  int eyeColor = 0;
  int eyeSize  = (int) (faceSize / 7.5f);

  fill(eyeColor);
  ellipse(leftEyeX, eyesY, eyeSize, eyeSize);
  ellipse(rightEyeX, eyesY, eyeSize, eyeSize);

  // Нос
  int noseWidth = (int) (faceSize / 18.75f);
  int noseHeight = (int) (faceSize / 10.0f);
  int noseCornerRadius = (int) (faceSize / 30.0f);
  int noseX = faceX - noseWidth / 2;
  int noseY = faceY;
  int noseColor = 0;

  fill(noseColor);
  rect(noseX, noseY, noseWidth, noseHeight, noseCornerRadius);

  // Рот
  int mouthYShift = (int) (faceSize / 3.75f);
  int mouthX = faceX;
  int mouthY = faceY + mouthYShift;
  int mouthWidth = (int) (faceSize / 3.0f);
  int mouthHeight = (int) (faceSize / 10.0f);
  int mouthSmileYShift = (int) (faceSize / 30.0f);
  int mouthSmileY = mouthY - mouthSmileYShift;
  int mouthColor = 0;

  fill(mouthColor);
  ellipse(mouthX, mouthY, mouthWidth, mouthHeight);
  noStroke();
  fill(faceColor);
  ellipse(mouthX, mouthSmileY, mouthWidth, mouthHeight);
}
