/*
   Смайлик

   В этой программе мы рисуем простой
   вариант смайлика без масштабирования.
*/

fullScreen();
background(0);

int centerX = width / 2;
int centerY = height / 2;

// Лицо смайлика

fill(252, 211, 3);
ellipse(centerX, centerY, 500, 500);

// Нос смайлика

fill(0);
rect(centerX - 15, centerY - 20, 30, 66, 40);

// Глаза смайлика

ellipse(centerX - 100, centerY - 80, 70, 70);
ellipse(centerX + 100, centerY - 80, 70, 70);

// Рот смайлика

ellipse(centerX, centerY + 140, 200, 70);
fill(252, 211, 3);
noStroke();
ellipse(centerX, centerY + 125, 200, 70);
