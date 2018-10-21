int levelIndex = 0;

char[][] levelData;
char[][] level;

int levelWidth;
int levelHeight;

void loadLevel() {
  levelData = LEVELS[levelIndex];
  levelWidth = levelData[0].length;
  levelHeight = levelData.length;
  
  ++levelIndex;
  if (levelIndex > LEVELS.length - 1) {
    // TODO: поздравь игрока. Он выиграл.

    levelIndex = 0;
  }
  
  level = new char[levelHeight][levelWidth];
  for (int y = 0; y < levelHeight; ++y) {
    for (int x = 0; x < levelWidth; ++x) {
      char cell = levelData[y][x];
      switch (cell) {
        case PLAYER:
          initPlayer(x, y);
          level[y][x] = FLOOR;
          break;
        default:
          level[y][x] = levelData[y][x];
          break;
      }
    } 
  }
  
  initScreenData();
}

void drawLevel() {
  for (int y = 0; y < levelHeight; ++y) {
    for (int x = 0; x < levelWidth; ++x) {
      float screenX = centerShiftX + x * cellSize;
      float screenY = centerShiftY + y * cellSize;
      
      char cell = level[y][x];
      switch (cell) {
        case WALL:
          fill(100, 100, 100);
          rect(screenX, screenY, cellSize, cellSize);
          break;
        case FLOOR:
          fill(0);
          rect(screenX, screenY, cellSize, cellSize);
          break;
        case EXIT:
          fill(0, 255, 0);
          rect(screenX, screenY, cellSize, cellSize);
          break;
      }
    }
  }
}
