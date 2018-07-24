int levelWidth;
int levelHeight;

char[][] levelData;
int level = -1;

void loadNextLevel() {
  ++level;
  if (level >= LEVELS.length) {
    // TODO: добавить код для обработки Победы.
    level = 0;
  }
  char[][] rawLevelData = LEVELS[level];

  coins = new Coin[0];

  levelWidth = rawLevelData[0].length;
  levelHeight = rawLevelData.length;
  levelData = new char[levelHeight][levelWidth];
  for (int y = 0; y < levelHeight; ++y) {
    for (int x = 0; x < levelWidth; ++x) {
      char cell = rawLevelData[y][x];
      switch (cell) {
         case WALL:
         case FLOOR:
         case DOOR:
           levelData[y][x] = cell;
           break;
         case HERO:
           levelData[y][x] = FLOOR;
           heroX = x;
           heroY = y;
           break;
         case COIN:
           levelData[y][x] = FLOOR;
           Coin coin = new Coin();
           coin.x = x;
           coin.y = y;
           coins = (Coin[]) append(coins, coin);
           break;
      }
    }
  }
  
  calculateScreenData();
}

void drawLevel() {
  for (int y = 0; y < levelHeight; ++y) {
    for (int x = 0; x < levelWidth; ++x) {
      float screenX = gameAreaX + x * tileSize;
      float screenY = gameAreaY + y * tileSize;
      
      char cell = levelData[y][x];
      switch (cell) {
         case WALL:
           fill(100);
           image(wallImage, screenX, screenY, tileSize, tileSize);
           break;
         case FLOOR:
           fill(0);
           rect(screenX, screenY, tileSize, tileSize);
           break;
         case DOOR:
           fill(57, 203, 0);
           rect(screenX, screenY, tileSize, tileSize);
           break;
      }
    }
  }
}
