int levelIndex = -1;
char[][] level;
int levelWidth;
int levelHeight;

void loadNextLevel() {
  levelIndex++;
  if (levelIndex >= LEVELS.length) {
    levelIndex = 0;
    playerScore = 0;
    // TODO: показать экран победы
  }
  
  levelHeight = LEVELS[levelIndex].length;
  levelWidth  = LEVELS[levelIndex][0].length;
  level = new char[levelHeight][levelWidth];
  
  for (int y = 0; y < levelHeight; y++) {
    for (int x = 0; x < levelWidth; x++) {
      char cell = LEVELS[levelIndex][y][x];
      if (cell == DOOR) {
        placePlayer(x, y);
      }
      level[y][x] = cell;
    }
  }
}

void drawLevel() {
  float cellPixelSize = min(width / levelWidth, height / levelHeight) * 0.8;
  float gameFieldPixelWidth  = cellPixelSize * levelWidth;
  float gameFieldPixelHeight = cellPixelSize * levelHeight;
  float gameFieldCenterShiftX = (width - gameFieldPixelWidth) / 2;
  float gameFieldCenterShiftY = (height - gameFieldPixelHeight) / 2;
  
  for (int y = 0; y < levelHeight; y++) {
    for (int x = 0; x < levelWidth; x++) {
      float pixelX = gameFieldCenterShiftX + x * cellPixelSize;
      float pixelY = gameFieldCenterShiftY + y * cellPixelSize;
      char cell = level[y][x];
      if (cell == WALL) {
        fill(60);
      } else if (cell == FLOOR) {
        fill(200);
      } else if (cell == DOOR) {
        fill(255, 0, 0);
      } else if (cell == EXIT_DOOR) {
        fill(0, 255, 0);
      } else if (cell == COIN) {
        fill(255, 255, 0);
      }
      rect(pixelX, pixelY, cellPixelSize, cellPixelSize);
    }
  }
}
