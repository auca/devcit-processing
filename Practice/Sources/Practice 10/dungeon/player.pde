int playerX, playerY;

void initPlayer(int startPlayerX, int startPlayerY) {
  playerX = startPlayerX;
  playerY = startPlayerY;
}

void movePlayer(int dx, int dy) {
  int nextX = playerX + dx;
  int nextY = playerY + dy;
  if (level[nextY][nextX] == EXIT) {
    loadLevel();
  } else if (level[nextY][nextX] != WALL) {
    playerX = nextX;
    playerY = nextY;
  }
}

void drawPlayer() {
  float screenX = centerShiftX + playerX * cellSize;
  float screenY = centerShiftY + playerY * cellSize;
      
  fill(255, 0, 0);
  rect(screenX, screenY, cellSize, cellSize);
}
