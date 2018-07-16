int levelWidth;
int levelHeight;

int selectedLevel = -1;
char[][] levelData;

void loadLevel(char[][] rawLevelData) {
  coins.clear();

  levelWidth = rawLevelData[0].length;
  levelHeight = rawLevelData.length;

  levelData = new char[levelHeight][levelWidth];
  for (int y = 0; y < levelHeight; ++y) {
    for (int x = 0; x < levelWidth; ++x) {
      char cell = rawLevelData[y][x];
      switch (cell) {
        case HERO:
          initHero(x, y);
          levelData[y][x] = FLOOR;
          break;
        case COIN:
          Coin coin = new Coin(x, y);
          coins.add(coin);

          levelData[y][x] = FLOOR;
        case WALL:
        case FLOOR:
        case EXIT:
          levelData[y][x] = cell;
          break;
      }
    }
  }
  
  calculateScreenData(levelData);
}

void loadNextLevel() {
  ++selectedLevel;
  if (selectedLevel >= LEVELS.length) {
    selectedLevel = 0;
  }
  
  char[][] rawLevelData = LEVELS[selectedLevel];
  loadLevel(rawLevelData);
}

void drawLevel() {
  drawLevel(levelData);
}

void drawLevel(char[][] level) {
  for (int y = 0; y < level.length; ++y) {
    for (int x = 0; x < level[y].length; ++x) {
      int screenX = fieldShiftX + x * cellSize;
      int screenY = fieldShiftY + y * cellSize;

      char cell = level[y][x];
      switch (cell) {
        case WALL:
          fill(100);
          image(wallImage, screenX, screenY, cellSize, cellSize);
          break;
        case FLOOR:
          fill(10);
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
