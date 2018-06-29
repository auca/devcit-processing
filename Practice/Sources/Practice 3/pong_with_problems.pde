final int SIZE = 16;
final int HALF_SIZE = SIZE / 2;

final int PADDLE_WIDTH  = 10;
final int PADDLE_HEIGHT = 70;

int x, y;
int dx = -2,
    dy =  2;
    
int firstPaddleX,
    firstPaddleY;
int firstPaddleDY = 3;
    
int secondPaddleX,
    secondPaddleY;
int secondPaddleDY = 3;

boolean hasLost = false;

void setup() {
  size(1000, 500);
  noStroke();
  
  x = width / 2;
  y = height / 2;
  
  firstPaddleX = 0;
  firstPaddleY = height / 2;

  secondPaddleX = width - PADDLE_WIDTH;
  secondPaddleY = height / 2;
}

void draw() {
  background(0);
  
  if (hasLost) {
    textSize(50);
    textAlign(CENTER, CENTER);
    text("Проиграл!", width / 2, height / 2);
  } else {
    /*
     * Шарик
     */
    ellipse(x, y, SIZE, SIZE);
    x += dx;
    y += dy;
    
    // Проверка столкновения с левой ракеткой
    if (x < firstPaddleX + PADDLE_WIDTH + HALF_SIZE) {
      if (y >= firstPaddleY - HALF_SIZE && y <= firstPaddleY + PADDLE_HEIGHT + HALF_SIZE) {
        dx = -dx;
      } else {
        hasLost = true;
      }
    }
  
    // Проверка столкновения с правой ракеткой
    if (x > secondPaddleX - HALF_SIZE) {
      if (y >= secondPaddleY - HALF_SIZE && y <= secondPaddleY + PADDLE_HEIGHT + HALF_SIZE) {
        dx = -dx;
      } else {
        hasLost = true;
      }
    }
    if (y < HALF_SIZE || y > height - HALF_SIZE) {
      dy = -dy;
    }
  
    /*
     * Ракетки
     */
    rect(firstPaddleX, firstPaddleY, PADDLE_WIDTH, PADDLE_HEIGHT);
    rect(secondPaddleX, secondPaddleY, PADDLE_WIDTH, PADDLE_HEIGHT);
    
    if (keyPressed) {
      if (key == 'w' || keyCode == UP) {
        firstPaddleY -= firstPaddleDY;
        secondPaddleY -= secondPaddleDY;
      } else if (key == 's' || keyCode == DOWN) {
        firstPaddleY += firstPaddleDY;
        secondPaddleY += secondPaddleDY;
      }
    }
  }
}
