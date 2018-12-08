void setup() {
  fullScreen();
  background(0);
  
}

void draw() {
  drawLevel();
}

void drawLevel() {
  int levelHeight = LEVEL_1.length;
  int levelWidth = LEVEL_1[0].length;
  
  float cellSize = min(width / levelWidth, height / levelHeight);
  float gameAreaWidth = cellSize * levelWidth;
  float gameAreaHeight = cellSize * levelHeight;
  float gameAreaCenterShiftX = (width - gameAreaWidth) / 2.0f;
  float gameAreaCenterShiftY = (height - gameAreaHeight) / 2.0f;

  for (int y = 0; y < levelHeight; ++y) {
    for (int x = 0; x < levelWidth; ++x) {
      char cell = LEVEL_1[y][x];
      float screenX = gameAreaCenterShiftX + x * cellSize;
      float screenY = gameAreaCenterShiftY + y * cellSize;
      switch(cell) {
        case FLOOR:
          fill(200);
          rect(screenX, screenY, cellSize, cellSize);
          break;
        case WALL:
          fill(80);
          rect(screenX, screenY, cellSize, cellSize);
          break;
        case HERO:
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
