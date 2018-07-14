final int BALL_SIZE = 20;
final int BALL_HALF_SIZE = BALL_SIZE / 2;

int ballX, ballY;
int ballDX = 2,
    ballDY = 2;

final int PADDLES_WIDTH = 10;
final int PADDLES_HALF_WIDTH = PADDLES_WIDTH / 2;
final int PADDLES_HEIGHT = 100;
final int PADDLES_HALF_HEIGHT = PADDLES_HEIGHT / 2;

int leftPaddleX, leftPaddleY;
int leftPaddleDY = 10;

int rightPaddleX, rightPaddleY;
int rightPaddleDY = 10;

int leftPlayerScore = 0;
int rightPlayerScore = 0;

final int SCORE_MARGIN_X = 140;
final int SCORE_MARGIN_Y = 80;

void setup() {
  size(1000, 500);
  background(0);
  noStroke();
  
  ballX = width / 2;
  ballY = height / 2;
  
  leftPaddleX = 0;
  leftPaddleY = height / 2 - PADDLES_HALF_HEIGHT;
  
  rightPaddleX = width - PADDLES_WIDTH;
  rightPaddleY = height / 2 - PADDLES_HALF_HEIGHT;
}

void draw() {
  background(0);
  
  // Ракетки
  
  rect(leftPaddleX, leftPaddleY, PADDLES_WIDTH, PADDLES_HEIGHT);
  rect(rightPaddleX, rightPaddleY, PADDLES_WIDTH, PADDLES_HEIGHT);
  
  if (keyPressed) {
    if (keyCode == UP) {
      leftPaddleY -= leftPaddleDY;
      rightPaddleY -= rightPaddleDY;
    } else if (keyCode == DOWN) {
      leftPaddleY += leftPaddleDY;
      rightPaddleY += rightPaddleDY;
    }
  }
  
  if (leftPaddleY < 0) {
    leftPaddleY = 0;
  }
  if (leftPaddleY >= height - PADDLES_HEIGHT) {
    leftPaddleY = height - PADDLES_HEIGHT - 1;
  }
  if (rightPaddleY < 0) {
    rightPaddleY = 0;
  }
  if (rightPaddleY >= height - PADDLES_HEIGHT) {
    rightPaddleY = height - PADDLES_HEIGHT - 1;
  }
  
  // Шарик
  
  ellipse(ballX, ballY, BALL_SIZE, BALL_SIZE);

  ballX += ballDX;
  ballY += ballDY;
  
  if (ballX < PADDLES_WIDTH + BALL_HALF_SIZE &&
      ballY > leftPaddleY - BALL_HALF_SIZE &&
      ballY < leftPaddleY + PADDLES_HEIGHT + BALL_HALF_SIZE) {
    ballDX = -ballDX;
  }
  if (ballX > rightPaddleX - BALL_HALF_SIZE &&
      ballY > rightPaddleY - BALL_HALF_SIZE &&
      ballY < rightPaddleY + PADDLES_HEIGHT + BALL_HALF_SIZE) {
    ballDX = -ballDX;
  }

  if (ballX < -BALL_HALF_SIZE) {
    ++rightPlayerScore;

    ballX = width / 2;
    ballY = height / 2;
    ballDX = -ballDX;
  }
  if (ballX > width + BALL_HALF_SIZE) {
    ++leftPlayerScore;
    
    ballX = width / 2;
    ballY = height / 2;
    ballDX = -ballDX;
  }
  
  if (ballY - BALL_HALF_SIZE < 0 || ballY + BALL_HALF_SIZE > height) {
    ballDY = -ballDY;
  }

  // Счет игры

  textSize(100);
  textAlign(CENTER, CENTER);
  text(leftPlayerScore, SCORE_MARGIN_X, SCORE_MARGIN_Y);
  text(rightPlayerScore, width - SCORE_MARGIN_X, SCORE_MARGIN_Y);
}
