size(500, 500);
background(0);

int x = width / 2;
int y = height / 2;
int colour = 0xFFFFD605;
//             A R G B
float size = 200;

// Лицо смайла
fill(colour);
ellipse(x, y, size, size);

// Глаза смайла
float eyeSize = size * 0.13;
float eyeShiftX = size * 0.17;
float eyeShiftY = size * 0.2;
fill(0);
ellipse(x - eyeShiftX, y - eyeShiftY, eyeSize, eyeSize);
ellipse(x + eyeShiftX, y - eyeShiftY, eyeSize, eyeSize);

// Нос смайла
float noseWidth = size * 0.07;
float noseHeight = size * 0.13;
float noseRounding = size * 0.03;
float noseShiftX = noseWidth / 2;
float noseShiftY = noseHeight / 2;
rect(x - noseShiftX, y - noseShiftY, noseWidth, noseHeight, noseRounding);

// Рот смайла
float mouthWidth = size * 0.33;
float mouthHeight = size * 0.1;
float mouthShiftY = size * 0.27;
float mouthSmileShiftY = size * 0.23;
ellipse(x, y + mouthShiftY, mouthWidth, mouthHeight);
fill(colour);
noStroke();
ellipse(x, y + mouthSmileShiftY, mouthWidth, mouthHeight);
