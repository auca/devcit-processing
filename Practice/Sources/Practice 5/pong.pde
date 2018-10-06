// Ball

final int BALL_SIZE = 20;
final int BALL_HALF_SIZE = BALL_SIZE / 2;
final int BALL_PAUSE = 70;

int ballX, ballY;
int ballDX = 2,
    ballDY = 2;

// Paddles

final int PADDLES_WIDTH = 10;
final int PADDLES_HALF_WIDTH = PADDLES_WIDTH / 2;
final int PADDLES_HEIGHT = 150;
final int PADDLES_HALF_HEIGHT = PADDLES_HEIGHT / 2;

int leftPaddleX, leftPaddleY;
int leftPaddleDY = 5;
int rightPaddleX, rightPaddleY;
int rightPaddleDY = 5;

// Score

int leftPlayerScore = 0;
int rightPlayerScore = 0;

int scoreMarginY = 100;
int scoreMarginX = 200;

void setup() {
  size(1280, 720);
  background(0);
  noStroke();
  smooth();
  textAlign(CENTER, CENTER);
  textSize(120);
  
  // Ball
  
  ballX = width / 2;
  ballY = height / 2;
  
  // Paddle
  
  leftPaddleY = rightPaddleY = height / 2 - PADDLES_HALF_HEIGHT;
  leftPaddleX = 0;
  rightPaddleX = width - PADDLES_WIDTH;
}

void draw() {
  background(0);
  
  // Ball
  
  ellipse(ballX, ballY, BALL_SIZE, BALL_SIZE);
  
  ballX += ballDX;
  ballY += ballDY;
  
  if (ballX + BALL_HALF_SIZE > width + BALL_PAUSE) {
    ++leftPlayerScore;
    ballX = width / 2;
    ballY = height / 2;
    ballDX = -ballDX;
  } else if (ballX - BALL_HALF_SIZE < -BALL_PAUSE) {
    ++rightPlayerScore;
    ballX = width / 2;
    ballY = height / 2;
    ballDX = -ballDX;
  }
  
  if (ballY + BALL_HALF_SIZE > height || ballY - BALL_HALF_SIZE < 0) {
    ballDY = -ballDY;
  }
  
  // Paddle

  rect(leftPaddleX, leftPaddleY, PADDLES_WIDTH, PADDLES_HEIGHT);
  rect(rightPaddleX, rightPaddleY, PADDLES_WIDTH, PADDLES_HEIGHT);

  if (keyPressed) {
    if (keyCode == DOWN) {
      leftPaddleY += leftPaddleDY;
      rightPaddleY += rightPaddleDY;
    } else if (keyCode == UP) {
      leftPaddleY -= leftPaddleDY;
      rightPaddleY -= rightPaddleDY;
    }
  }
  leftPaddleY = constrain(leftPaddleY, 0, height - PADDLES_HEIGHT);
  rightPaddleY = constrain(rightPaddleY, 0, height - PADDLES_HEIGHT);
  
  // Collision
  
  int deltaX, deltaY, distance;
  
  int leftIntersectionX = constrain(ballX, leftPaddleX, leftPaddleX + PADDLES_WIDTH);
  int leftIntersectionY = constrain(ballY, leftPaddleY, leftPaddleY + PADDLES_HEIGHT);
  deltaX = leftIntersectionX - ballX;
  deltaY = leftIntersectionY - ballY;
  distance = int(sqrt(deltaX * deltaX + deltaY * deltaY));
  if (distance <= BALL_HALF_SIZE) {
    ballDX = -ballDX;
  }

  int rightIntersectionX = constrain(ballX, rightPaddleX, rightPaddleX + PADDLES_WIDTH);
  int rightIntersectionY = constrain(ballY, rightPaddleY, rightPaddleY + PADDLES_HEIGHT);
  deltaX = rightIntersectionX - ballX;
  deltaY = rightIntersectionY - ballY;
  distance = int(sqrt(deltaX * deltaX + deltaY * deltaY));
  if (distance <= BALL_HALF_SIZE) {
    ballDX = -ballDX;
  }
  
  // Score
  
  text(leftPlayerScore, scoreMarginX, scoreMarginY);
  text(rightPlayerScore, width - scoreMarginX, scoreMarginY);
}
