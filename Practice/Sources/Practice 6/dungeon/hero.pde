int heroX;
int heroY;

int heroCoins = 0;

void moveHero(int dx, int dy) {
  int nextX = heroX + dx;
  int nextY = heroY + dy;
  
  if (nextX >= 0 && nextX < levelWidth &&
      nextY >= 0 && nextY < levelHeight &&
      levelData[nextY][nextX] != WALL) {
     heroX = nextX;
     heroY = nextY;
  }
  
  if (levelData[heroY][heroX] == DOOR) {
    loadNextLevel();
  }
  
  for (int i = 0; i < coins.length; ++i) {
    Coin coin = coins[i];
    if (!coin.isCollected && heroX == coin.x && heroY == coin.y) {
      coin.pick();
      ++heroCoins;
    }
  }
}

void drawHero() {
  float screenX = gameAreaX + heroX * tileSize;
  float screenY = gameAreaY + heroY * tileSize;
      
  ellipseMode(CORNER);
  fill(255, 0, 0);
  ellipse(screenX, screenY, tileSize, tileSize);
}

void drawHeroCoinCount() {
  fill(255);
  textSize(scoreTextSize);
  text("Coins: " + heroCoins, scoreMarginX, scoreMarginY);
}
