/*
  Программа рисует смайл в центре
  экрана.
 */

fullScreen();
background(0);
noStroke();

// Лицо смайлика

fill(255, 200, 0);
ellipse(width / 2, height / 2, 400, 400);

// Глаза

fill(0);
ellipse(width / 2 - 60, height / 2 - 50, 50, 50);
ellipse(width / 2 + 60, height / 2 - 50, 50, 50);

// Нос

rect(width / 2 - 11, height / 2 - 21, 22, 42, 20);

// Рот

ellipse(width / 2, height / 2 + 100, 120, 50);
fill(255, 200, 0);
ellipse(width / 2, height / 2 + 85, 120, 50);
