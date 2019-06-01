// Константы и переменные шарика

final int RADIUS = 10;
final int DIAMETER = RADIUS * 2;
final int RESPAWN_DELAY_DIST = 300;

int x, y;
int dx = 5;
int dy = 5;

// Константы и переменные ракеток

final int PADDLE_WIDTH = 10;
final int PADDLE_HEIGHT = 100;
final int PADDLE_HALF_HEIGHT = PADDLE_HEIGHT / 2;

int leftPaddleX;
int leftPaddleY;
int leftPaddleDY = 5;

int rightPaddleX;
int rightPaddleY;
int rightPaddleDY = 5;

final int SCORE_MARGIN_TOP = 50;
final int SCORE_MARGIN_SIDE = 100;

int leftScore = 0;
int rightScore = 0;

void setup() {
  fullScreen();
  noStroke();
  background(0);
  fill(255);
  textSize(100);
  textAlign(CENTER, CENTER);

  // Установка позиции шарика

  x = width / 2;
  y = height / 2;
  
  // Установка позиций ракеток
  
  leftPaddleX = 0;
  rightPaddleX = width - PADDLE_WIDTH;
  leftPaddleY = rightPaddleY = height / 2 - PADDLE_HALF_HEIGHT;
}

void draw() {
  background(0);

  // Рисование и движение шарика

  ellipse(x, y, DIAMETER, DIAMETER);
  
  x += dx;
  if (x > width - RADIUS + RESPAWN_DELAY_DIST) {
    ++leftScore;
    
    x = width / 2;
    y = height / 2;
    dx = -dx;
  }
  if (x < RADIUS - RESPAWN_DELAY_DIST) {
    ++rightScore;
    
    x = width / 2;
    y = height / 2;
    dx = -dx;
  }

  y += dy;
  if (y > height - RADIUS || y < RADIUS) {
    dy = -dy;
  }
  
  // Рисование и движение ракеток

  rect(leftPaddleX, leftPaddleY, PADDLE_WIDTH, PADDLE_HEIGHT);
  rect(rightPaddleX, rightPaddleY, PADDLE_WIDTH, PADDLE_HEIGHT);
  
  if (keyPressed) {
    if (keyCode == UP) {
      leftPaddleY -= leftPaddleDY;
      rightPaddleY -= rightPaddleDY; // TODO: для проекта, позволить двум разным игрокам контролировать свои ракетки
    } else if (keyCode == DOWN) {
      leftPaddleY += leftPaddleDY;
      rightPaddleY += rightPaddleDY;
    }
    
    if (leftPaddleY < 0) {
      leftPaddleY = 0;
    } else if (leftPaddleY + PADDLE_HEIGHT > height) {
      leftPaddleY = height - PADDLE_HEIGHT;
    }

    // Не обязательная проверка для одного игрока, но код может быть полезным для варианта с двумя игроками
    if (rightPaddleY < 0) {
      rightPaddleY = 0;
    } else if (rightPaddleY + PADDLE_HEIGHT > height) {
      rightPaddleY = height - PADDLE_HEIGHT;
    }
  }
  
  // Счет
  
  text(leftScore, SCORE_MARGIN_SIDE, SCORE_MARGIN_TOP);
  text(rightScore, width - SCORE_MARGIN_SIDE, SCORE_MARGIN_TOP);
}
