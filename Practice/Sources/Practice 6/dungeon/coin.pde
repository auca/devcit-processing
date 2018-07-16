class Coin {
  int x;
  int y;
  
  boolean collected = false;
  
  Coin(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  void pick() {
    collected = true;
  }

  void draw() {
    if (!collected) {
      int coinSize = cellSize / 2;
      int screenX = ((cellSize - coinSize) / 2) + fieldShiftX + x * cellSize;
      int screenY = ((cellSize - coinSize) / 2) + fieldShiftY + y * cellSize;
  
      fill(255, 200, 0);
      ellipseMode(CORNER);
      ellipse(screenX, screenY, coinSize, coinSize);
    }
  }
}

ArrayList<Coin> coins = new ArrayList<Coin>();

void drawCoins() {
  for (int i = 0; i < coins.size(); ++i) {
    Coin coin = coins.get(i);
    coin.draw();
  }
}
