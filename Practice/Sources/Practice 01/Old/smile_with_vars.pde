void setup() {
  // Окно программы
  size(500, 500);
  background(0, 0, 0);

  int faceX; // определение переменной (выделение памяти)
// ^ тип переменной
  faceX = width / 2; // инициализация (запись в память первого значения)
  // определение и инициализацию в Java можно объединить
  int faceY = height / 2;
  //  ^ идентификатор переменной
  int faceColor = 0xffffc700;
  int faceSize  = 300;

  // Лицо
  fill(faceColor);
  ellipse(faceX, faceY, faceSize, faceSize);

  // Глаза
  int eyeXShift = 50;
  int eyeYShift = 50;
  int leftEyeX  = faceX - eyeXShift;
  int rightEyeX = faceX + eyeXShift;
  int eyesY = faceY - eyeYShift;
  int eyeColor = 0;
  int eyeSize  = 40;

  fill(eyeColor);
  ellipse(leftEyeX, eyesY, eyeSize, eyeSize);
  ellipse(rightEyeX, eyesY, eyeSize, eyeSize);

  // Нос
  int noseWidth = 16;
  int noseHeight = 30;
  int noseCornerRadius = 10;
  int noseX = faceX - noseWidth / 2;
  int noseY = faceY;
  int noseColor = 0;

  fill(noseColor);
  rect(noseX, noseY, noseWidth, noseHeight, noseCornerRadius);

  // Рот
  int mouthYShift = 80;
  int mouthX = faceX;
  int mouthY = faceY + mouthYShift;
  int mouthWidth = 100;
  int mouthHeight = 30;
  int mouthSmileYShift = 10;
  int mouthSmileY = mouthY - mouthSmileYShift;
  int mouthColor = 0;

  fill(mouthColor);
  ellipse(mouthX, mouthY, mouthWidth, mouthHeight);
  noStroke();
  fill(faceColor);
  ellipse(mouthX, mouthSmileY, mouthWidth, mouthHeight);
}
