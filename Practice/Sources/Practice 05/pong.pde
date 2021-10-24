/*
  Игра Pong
 */

// Ball

final float BALL_SIZE = 20;
final float BALL_HALF_SIZE = BALL_SIZE / 2;

float ballX;
float ballY;
float ballDX = 5;
float ballDY = 5;

// Paddles

final float PADDLE_WIDTH  = 20;
final float PADDLE_HEIGHT = 120;
final float PADDLE_HALF_HEIGHT = PADDLE_HEIGHT / 2;
final float PADDLE_DY = 5;

float leftPaddleX;
float rightPaddleX;
float leftPaddleY;
float rightPaddleY;

void setup() {
  fullScreen();
  background(0);
  noStroke();
  
  // Ball
  
  ballX = width / 2;
  ballY = height / 2;
  
  // Paddles
  
  leftPaddleX = 0;
  leftPaddleY = height / 2 - PADDLE_HALF_HEIGHT;
  
  rightPaddleX = width - PADDLE_WIDTH;
  rightPaddleY = leftPaddleY;
}

void draw() {
  background(0);
  
  // Ball
  
  circle(ballX, ballY, BALL_SIZE);
  
  ballX += ballDX;
  if ((ballX + BALL_HALF_SIZE > width) || (ballX - BALL_HALF_SIZE < 0)) {
    ballDX = -ballDX;
  }
  ballY += ballDY;
  if ((ballY + BALL_HALF_SIZE > height) || (ballY - BALL_HALF_SIZE < 0)) {
    ballDY = -ballDY; // ballDY *= -1;
  }
  
  // Paddles
  
  rect(leftPaddleX, leftPaddleY, PADDLE_WIDTH, PADDLE_HEIGHT);
  rect(rightPaddleX, rightPaddleY, PADDLE_WIDTH, PADDLE_HEIGHT);
  
  if (keyPressed) {
    if (keyCode == UP) {
      leftPaddleY -= PADDLE_DY;
      rightPaddleY -= PADDLE_DY;
    } else if (keyCode == DOWN) {
      leftPaddleY += PADDLE_DY;
      rightPaddleY += PADDLE_DY;
    }
  }
}
