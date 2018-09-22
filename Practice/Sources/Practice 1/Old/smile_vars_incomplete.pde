void setup() {
  // Окно программы
  size(500, 500);
  background(0, 0, 0);

  int faceColor = 0xffffc711;
  int faceX = 300;
  int faceY = 300;
  int faceSize = 300;
  
  // Лицо
  fill(faceColor);
  ellipse(faceX, faceY, faceSize, faceSize);

  // Глаза
  int eyeColor = 0;
  int eyeXShift = 50;
  int eyeYShift = 50;
  int leftEyeX = faceX - eyeXShift;
  int rightEyeX = faceX + eyeXShift;
  int eyesY = faceY - eyeYShift;
  int eyeSize = 40;
  
  fill(eyeColor);
  ellipse(leftEyeX, eyesY, eyeSize, eyeSize);
  ellipse(rightEyeX, eyesY, eyeSize, eyeSize);

  // Нос
  rect(242, 250, 16, 30, 30);

  // Рот
  ellipse(250, 330, 100, 30);
  noStroke();
  fill(faceColor);
  ellipse(250, 320, 100, 30);
}
