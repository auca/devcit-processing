size(500, 500);
background(0);

int centerX = width / 2;
int centerY = height / 2;

// Лицо смайлика

fill(255, 214, 3);
ellipse(centerX, centerY, 400, 400);

// Глаза смайлика

fill(0);
ellipse(centerX - 60, centerY - 70, 50, 50);
ellipse(centerX + 60, centerY - 70, 50, 50);

// Рот смайлика

ellipse(centerX, centerY + 70, 150, 40);
