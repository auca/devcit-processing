float tileSize;
float gameAreaWidth;
float gameAreaHeight;
float gameAreaX;
float gameAreaY;

float scoreTextSize = 70;
float scoreMarginX = 40;
float scoreMarginY = 70;

PImage wallImage;
Sprite coinSprite;

void loadFonts() {
  PFont font = createFont("ARCADECLASSIC.TTF", 32);
  textFont(font);
}

void loadImages() {
  wallImage = loadImage("wall_large.png");
  coinSprite = new Sprite("coin/coin_", 5, ".png", 5);
  // TODO
}

void calculateScreenData() {
  tileSize = min(width / levelWidth, height / levelHeight);
  gameAreaWidth = levelWidth * tileSize;
  gameAreaHeight = levelHeight * tileSize;
  gameAreaX = (width - gameAreaWidth) / 2;
  gameAreaY = (height - gameAreaHeight) / 2;
}
