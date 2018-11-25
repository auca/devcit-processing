// Константы Шарик

final int BALL_SIZE = 20;
final int BALL_HALF_SIZE = BALL_SIZE / 2;

// Константы ракеток

final int PADDLE_WIDTH = 10;
final int PADDLE_HEIGHT = 80;
final int PADDLE_HALF_HEIGHT = PADDLE_HEIGHT / 2;

// Переменные шарика

int ballX, ballY;
int ballDX = 2,
    ballDY = 2;

// Переменные ракеток

int paddleX1, paddleY1,
    paddleX2, paddleY2;
int paddleDY = 5;

void setup() {
  size(1000, 500);
  background(0);
  noStroke();
  smooth();
  
  // Инициализация значений шарика

  ballX = width / 2;
  ballY = height / 2;
  
  // Инициализация значений ракеток
  
  paddleX1 = 0;
  paddleY1 = height / 2 - PADDLE_HALF_HEIGHT;

  paddleX2 = width - PADDLE_WIDTH;
  paddleY2 = height / 2 - PADDLE_HALF_HEIGHT;
}

void draw() {
  background(0);
  
  // Рисуем и двигаем шарик

  ellipse(ballX, ballY, BALL_SIZE, BALL_SIZE);
  
  ballX += ballDX;
  ballY += ballDY;
  
  if (ballX + BALL_HALF_SIZE > width || ballX - BALL_HALF_SIZE < 0) {
    ballDX = -ballDX;
  }
  if (ballY + BALL_HALF_SIZE > height || ballY - BALL_HALF_SIZE < 0) {
    ballDY = -ballDY;
  }
  
  // Рисуем и двигаем ракетки
  
  rect(paddleX1, paddleY1, PADDLE_WIDTH, PADDLE_HEIGHT);
  rect(paddleX2, paddleY2, PADDLE_WIDTH, PADDLE_HEIGHT);
  
  if (keyPressed) {
    if (keyCode == UP) {
      paddleY1 -= paddleDY;
      paddleY2 -= paddleDY;
    } else if (keyCode == DOWN) {
      paddleY1 += paddleDY;
      paddleY2 += paddleDY;
    }
  }
  
  if (paddleY1 < 0) {
    paddleY1 = 0;
  }
  if (paddleY2 < 0) {
    paddleY2 = 0;
  }
  
  if (paddleY1 > height - PADDLE_HEIGHT) {
    paddleY1 = height - PADDLE_HEIGHT;
  }
  if (paddleY2 > height - PADDLE_HEIGHT) {
    paddleY2 = height - PADDLE_HEIGHT;
  }
}
