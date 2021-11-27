int playerX;
int playerY;
int playerScore = 0;

void placePlayer(int x, int y) {
  playerX = x;
  playerY = y;
}

void movePlayer(int dx, int dy) {
  int nextX = playerX + dx;
  int nextY = playerY + dy;
  
  char cell = level[nextY][nextX];
  if (cell != WALL) {
    playerX = nextX;
    playerY = nextY;
    if (cell == EXIT_DOOR) {
      loadNextLevel();
    } else if (cell == COIN) {
      playerScore++;
      level[nextY][nextX] = FLOOR;
    }
  }
}

void drawPlayer() {
  float cellPixelSize = min(width / levelWidth, height / levelHeight) * 0.8;
  float gameFieldPixelWidth  = cellPixelSize * levelWidth;
  float gameFieldPixelHeight = cellPixelSize * levelHeight;
  float gameFieldCenterShiftX = (width - gameFieldPixelWidth) / 2;
  float gameFieldCenterShiftY = (height - gameFieldPixelHeight) / 2;
  float pixelX = gameFieldCenterShiftX + playerX * cellPixelSize;
  float pixelY = gameFieldCenterShiftY + playerY * cellPixelSize;
  
  fill(255, 0, 0);
  rect(pixelX, pixelY, cellPixelSize, cellPixelSize);
}

void drawPlayerScore() {
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(100);
  text("Score " + playerScore, width / 2, 100);
}
