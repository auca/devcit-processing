size(500, 500);
background(0);

// Голова смайлика
fill(255, 200, 0);
ellipse(width / 2, height / 2, 300, 300);

// Глаза смайлика
fill(0);
ellipse(width / 2 - 50, height / 2 - 50, 35, 35);
ellipse(width / 2 + 50, height / 2 - 50, 35, 35);

// Нос смайлика
rect(width / 2 - 10, height / 2 - 19, 20, 38, 25);

// Рот смайлика
ellipse(width / 2, height / 2 + 80, 100, 30);
fill(255, 200, 0);
noStroke();
ellipse(width / 2, height / 2 + 70, 100, 30);
