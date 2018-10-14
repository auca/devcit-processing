int currentLevel = 2;

void setup() {
  size(1280, 720);
  background(0);

  drawLevel();
}

void drawLevel() {
  char[][] levelData = LEVELS[currentLevel];
  int levelWidth = levelData[0].length;
  int levelHeight = levelData.length;
  
  float cellSize = min(width / levelWidth, height / levelHeight);
  float gameAreaWidth = levelWidth * cellSize;
  float gameAreaHeight = levelHeight * cellSize;
  float centerShiftX = (width - gameAreaWidth) * 0.5f;
  float centerShiftY = (height - gameAreaHeight) * 0.5f;
  
  for (int y = 0; y < levelHeight; ++y) {
    for (int x = 0; x < levelWidth; ++x) {
      float screenX = centerShiftX + x * cellSize;
      float screenY = centerShiftY + y * cellSize;
      
      char cell = levelData[y][x];
      switch (cell) {
        case WALL:
          fill(100, 100, 100);
          rect(screenX, screenY, cellSize, cellSize);
          break;
        case FLOOR:
          fill(0);
          rect(screenX, screenY, cellSize, cellSize);
          break;
        case PLAYER:
          fill(255, 0, 0);
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
