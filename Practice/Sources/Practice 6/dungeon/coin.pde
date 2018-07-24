class Coin {
  int x;
  int y;
  
  boolean isCollected = false;

  void pick() {
    isCollected = true;
    coinCollectedSound.rewind();
    coinCollectedSound.play();
  }
  
  void draw() {
    if (!isCollected) {
      float screenX = gameAreaX + x * tileSize;
      float screenY = gameAreaY + y * tileSize;
      coinSprite.draw(screenX, screenY, tileSize, tileSize);
    }
  }
}

Coin[] coins = new Coin[0];

void drawCoins() {
  for (int i = 0; i < coins.length; ++i) {
    Coin coin = coins[i];
    coin.draw();
  }
}
