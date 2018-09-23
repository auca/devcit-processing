/*
  Смайлики
 */

size(500, 500);
background(0);

int centerX = width / 2;
int centerY = height / 2;
int smileColor = 0xFFFFD500;
int smileSize = 400;

// Лицо смайлика

fill(smileColor);
ellipse(centerX, centerY, smileSize, smileSize);

// Глаза смайлика

float eyeSize = smileSize * 0.125;
float eyeShiftX = smileSize * 0.15;
float eyeShiftY = smileSize * 0.175;

fill(0);
ellipse(centerX - eyeShiftX, centerY - eyeShiftY, eyeSize, eyeSize);
ellipse(centerX + eyeShiftX, centerY - eyeShiftY, eyeSize, eyeSize);

// Нос

float noseWidth = smileSize * 0.06;
float noseHeight = smileSize * 0.1;
float noseCornerRadius = smileSize * 0.035;
float noseShiftX = noseWidth / 2.0;
float noseShiftY = smileSize * 0.0125;

rect(centerX - noseShiftX, centerY - noseShiftY, noseWidth, noseHeight, noseCornerRadius);

// Рот смайлика

float mouthWidth = smileSize * 0.375;
float mouthHeight = smileSize * 0.1;
float mouthShiftY = smileSize * 0.275;
float mouthSmileShiftY = smileSize * 0.245;

ellipse(centerX, centerY + mouthShiftY, mouthWidth, mouthHeight);
noStroke();
fill(smileColor);
ellipse(centerX, centerY + mouthSmileShiftY, mouthWidth, mouthHeight);
