/*
   Смайлик

   В этой программе мы рисуем смайлика c масштабированием.
*/

void setup() {
  fullScreen();
  background(0);
}

void draw() {
  drawSmile(
    (int) random(width),
    (int) random(height),
    0xFF000000 | (int) random(16581375),
    random(800)
  );
  
  delay(200);
}

void drawSmile(int centerX, int centerY, int faceColor, float faceSize) {
  // Лицо смайлика
  
  fill(faceColor);
  ellipse(centerX, centerY, faceSize, faceSize);
  
  // Нос смайлика
  
  float noseWidth  = faceSize * 0.06;
  float noseHeight = faceSize * 0.132;
  float noseXShift = faceSize * 0.03;
  float noseYShift = faceSize * 0.04;
  float noseRoundedness = faceSize * 0.08;
  
  fill(0);
  rect(
    centerX - noseXShift,
    centerY - noseYShift,
    noseWidth,
    noseHeight,
    noseRoundedness
  );
  
  
  // Глаза смайлика
  
  float eyeSize   = faceSize * 0.14;
  float eyeXShift = faceSize * 0.2;
  float eyeYShift = faceSize * 0.16;
  
  ellipse(centerX - eyeXShift, centerY - eyeYShift, eyeSize, eyeSize);
  ellipse(centerX + eyeXShift, centerY - eyeYShift, eyeSize, eyeSize);
  
  // Рот смайлика
  
  float mouthWidth  = faceSize * 0.4;
  float mouthHeight = faceSize * 0.14;
  float mouthShiftY = faceSize * 0.28;
  float mouthEffectShiftY = faceSize * 0.25;
  
  ellipse(centerX, centerY + mouthShiftY, mouthWidth, mouthHeight);
  fill(faceColor);
  noStroke();
  ellipse(centerX, centerY + mouthEffectShiftY, mouthWidth, mouthHeight);
}
