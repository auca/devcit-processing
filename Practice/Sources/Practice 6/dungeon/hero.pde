int heroX;
int heroY;

int heroCoins = 0;

void initHero(int x, int y) {
  heroX = x;
  heroY = y;
}

void updateHero() {
  if (levelData[heroY][heroX] == EXIT) {
      loadNextLevel();
  }
}

void moveHero(int dx, int dy) {
  int nextX = heroX + dx; //<>//
  int nextY = heroY + dy;

  if (nextX >= 0 && nextX < levelWidth &&
      nextY >= 0 && nextY < levelHeight &&
      levelData[nextY][nextX] != WALL) {
    heroX = nextX;
    heroY = nextY;
    
    for (int i = 0; i < coins.size(); ++i) {
      Coin coin = coins.get(i);
      if (heroX == coin.x &&
          heroY == coin.y) {
        coin.pick();
        ++heroCoins;
      }
    }
  }
}

void drawHero() {
  int screenX = fieldShiftX + heroX * cellSize;
  int screenY = fieldShiftY + heroY * cellSize;
      
  fill(255, 0, 0);
  ellipseMode(CORNER);
  ellipse(screenX, screenY, cellSize, cellSize);
}
