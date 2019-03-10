// Константы шарика
final int SIZE = 20;
final int HALF_SIZE = SIZE / 2;
final int RESTART_DELAY = 130;

// Константы ракеток
final int PADDLE_WIDTH = 10;
final int PADDLE_HEIGHT = 100;
final int PADDLE_DY = 4;

// Константы очков игроков
final int SCORE_SIZE = 80;
final int SCORE_MARGIN = 130;

// Переменные шарика
int x, y;
int dx = -3,
    dy = -3;

// Переменные ракеток
int paddleX1, paddleY1;
int paddleX2, paddleY2;

// Очки игроков
int leftScore = 0;
int rightScore = 0;

void setup() {
  size(900, 500);
  background(0);
  
  // Начальное положение шарика
  x = width / 2;
  y = height / 2;
  
  // Начальное положение ракеток
  paddleX1 = 0;
  paddleX2 = width - PADDLE_WIDTH;
  paddleY1 = paddleY2 = (height - PADDLE_HEIGHT) / 2;
}

void draw() {
  background(0);
  noStroke();
  
  // Рисование и движение шарика
  fill(255);
  rectMode(CENTER);
  rect(x, y, SIZE, SIZE);
  rectMode(CORNER);
  x += dx;
  if (x < -RESTART_DELAY) {
    ++rightScore;
    dx = -dx;
    x = width / 2;
    y = height / 2;
  }
  if (x > width + RESTART_DELAY) {
    ++leftScore;
    dx = -dx;
    x = width / 2;
    y = height / 2;
  }
  y += dy;
  if (y > height - HALF_SIZE || y < HALF_SIZE) {
    dy = -dy;
  }
  // Столкновение с левой ракеткой
  if (x > paddleX1 - HALF_SIZE &&
      x < paddleX1 + PADDLE_WIDTH + HALF_SIZE &&
      y > paddleY1 - HALF_SIZE &&
      y < paddleY1 + PADDLE_HEIGHT + HALF_SIZE) {
    dx = -dx;
  }

  // Рисование и движение ракеток
  fill(255);
  rect(paddleX1, paddleY1, PADDLE_WIDTH, PADDLE_HEIGHT);
  rect(paddleX2, paddleY2, PADDLE_WIDTH, PADDLE_HEIGHT);
  
  if (keyPressed) {
    if (key == 'w' || key == 'W' || keyCode == UP) {
      paddleY1 -= PADDLE_DY;
      paddleY2 -= PADDLE_DY;
    } else if (key == 's' || key == 'S' || keyCode == DOWN) {
      paddleY1 += PADDLE_DY;
      paddleY2 += PADDLE_DY;
    }
    paddleY1 = constrain(paddleY1, 0, height - PADDLE_HEIGHT);
    paddleY2 = constrain(paddleY2, 0, height - PADDLE_HEIGHT);
  }

  // Очки игроков
  textSize(SCORE_SIZE);
  textAlign(RIGHT);
  text(leftScore, SCORE_MARGIN, SCORE_MARGIN);
  textAlign(LEFT);
  text(rightScore, width - SCORE_MARGIN, SCORE_MARGIN);
}
