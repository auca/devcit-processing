size(700, 500);
background(0);

int x = width / 2;
int y = height / 2;
int size = 400;
int c = 0xFFFFE200;

// Лицо смайлика

fill(c);
ellipse(x, y, size, size);

// Глаза смайлика

int eyeSize = size / 8;
int eyeShiftX = size / 5;
int eyeShiftY = size / 8;

fill(0);
ellipse(x - eyeShiftX, y - eyeShiftY, eyeSize, eyeSize);
ellipse(x + eyeShiftX, y - eyeShiftY, eyeSize, eyeSize);

// Нос смайлика

float noseWidth = size / 13.3;
float noseHeight = size / 8;
float noseShiftX = size / 26.7;
float noseRoundness = size / 20;

//   x               y  w          h           r
rect(x - noseShiftX, y, noseWidth, noseHeight, noseRoundness);

// Рот смайлика

float mouthWidth = size / 2.7;
float mouthHeight = size / 8;
float mouthShiftY = size / 3.64;
float mouthSmileShiftY = size / 4;

ellipse(x, y + mouthShiftY, mouthWidth, mouthHeight);
fill(c);
noStroke();
ellipse(x, y + mouthSmileShiftY, mouthWidth, mouthHeight);
