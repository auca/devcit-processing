final int SCORE_POINTS_FOR_COIN = 10;

int playerX,
    playerY;

int playerScore = 0;

void initPlayer(int initialX, int initialY) {
  playerX = initialX;
  playerY = initialY;
}

void movePlayer(int dx, int dy) {
  int nextX = playerX + dx;
  int nextY = playerY + dy;

  char cell = level[nextY][nextX];
  if (cell == EXIT) {
    loadLevel();
  } else if (cell != WALL) {
    playerX = nextX;
    playerY = nextY;
    if (cell == COIN) {
      playerScore += SCORE_POINTS_FOR_COIN;
      level[playerY][playerX] = FLOOR;
      coinSound.play();
      coinSound.rewind();
    }
  }
}

void drawPlayer() {
  int screenX = centerShiftX + playerX * cellSize;
  int screenY = centerShiftY + playerY * cellSize;

  playerSprite.draw(screenX, screenY, cellSize, cellSize);
}
