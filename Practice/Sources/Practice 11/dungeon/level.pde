int levelIndex = -1;

char[][] levelData,
         level;

int levelWidth,
    levelHeight;

void loadLevel() {
  ++levelIndex;
  if (levelIndex > LEVELS.length - 1) {
    // Конец игры

    levelIndex = 0;
    playerScore = 0;
  }

  levelData = LEVELS[levelIndex];
  levelWidth = levelData[0].length;
  levelHeight = levelData.length;

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
      }
    }
  }

  initScreenData();
}

void drawLevel() {
  background(0);

  for (int y = 0; y < levelHeight; ++y) {
    for (int x = 0; x < levelWidth; ++x) {
      int screenX = centerShiftX + x * cellSize;
      int screenY = centerShiftY + y * cellSize;

      char cell = level[y][x];
      switch (cell) {
        case WALL:
          image(wallImage, screenX, screenY, cellSize, cellSize);
          break;
        case FLOOR:
          image(floorImage, screenX, screenY, cellSize, cellSize);
          break;
        case EXIT:
          image(exitImage, screenX, screenY, cellSize, cellSize);
          break;
        case COIN:
          image(floorImage, screenX, screenY, cellSize, cellSize);
          coinSprite.draw(screenX, screenY, cellSize, cellSize);
          break;
      }
    }
  }
}
