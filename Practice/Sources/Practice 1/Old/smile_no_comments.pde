void setup() {
  // Окно программы
  size(500, 500);
  background(0, 0, 0);

  // Лицо
  fill(0xffffc700);
  ellipse(250, 250, 300, 300);

  // Глаза
  fill(0);
  ellipse(200, 200, 40, 40);
  ellipse(300, 200, 40, 40);

  // Нос
  rect(244, 250, 16, 30, 30);

  // Рот
  ellipse(250, 330, 100, 30);
  noStroke();
  fill(0xffffc700);
  ellipse(250, 320, 100, 30);
}

