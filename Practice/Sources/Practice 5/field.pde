final char WALL  = '#';
final char FLOOR = ' ';
final char DOOR  = 'D';
final char HERO  = 'H';

char[][] LEVEL_1 = {
  { '#', '#', '#', '#', '#', '#', '#' },
  { '#', 'H', ' ', ' ', ' ', 'D', '#' },
  { '#', '#', '#', '#', '#', '#', '#' }
};

char[][] LEVEL_2 = {
  { '#', '#', '#' },
  { '#', 'H', '#' },
  { '#', ' ', '#' },
  { '#', ' ', '#' },
  { '#', ' ', '#' },
  { '#', ' ', '#' },
  { '#', ' ', '#' },
  { '#', ' ', '#' },
  { '#', 'D', '#' },
  { '#', '#', '#' }
};

char[][] LEVEL_3 = {
  { '#', '#', '#', '#', '#', '#', '#' },
  { '#', 'H', ' ', ' ', '#', ' ', '#' },
  { '#', '#', '#', ' ', '#', ' ', '#' },
  { '#', ' ', ' ', ' ', ' ', ' ', '#' },
  { '#', ' ', '#', '#', '#', '#', '#' },
  { '#', ' ', '#', 'D', '#', ' ', '#' },
  { '#', ' ', '#', ' ', ' ', ' ', '#' },
  { '#', ' ', '#', '#', '#', ' ', '#' },
  { '#', ' ', ' ', ' ', ' ', ' ', '#' },
  { '#', '#', '#', '#', '#', '#', '#' }
};

PImage wallImage;

void setup() {
  size(1280, 720);
  background(0);
  
  wallImage = loadImage("wall_large.png");
}

void draw() {
  int levelWidth = LEVEL_3[0].length;
  int levelHeight = LEVEL_3.length;
  float tileSize = min(width / levelWidth, height / levelHeight);
  float gameAreaWidth = levelWidth * tileSize;
  float gameAreaHeight = levelHeight * tileSize;
  float gameAreaX = (width - gameAreaWidth) / 2;
  float gameAreaY = (height - gameAreaHeight) / 2;
  
  for (int y = 0; y < levelHeight; ++y) {
    for (int x = 0; x < levelWidth; ++x) {
      float screenX = gameAreaX + x * tileSize;
      float screenY = gameAreaY + y * tileSize;
      
      char cell = LEVEL_3[y][x];
      switch (cell) {
         case WALL:
           fill(100);
           image(wallImage, screenX, screenY, tileSize, tileSize);
           break;
         case FLOOR:
           fill(255);
           rect(screenX, screenY, tileSize, tileSize);
           break;
         case DOOR:
           fill(57, 203, 0);
           rect(screenX, screenY, tileSize, tileSize);
           break;
         case HERO:
           ellipseMode(CORNER);
           fill(255);
           rect(screenX, screenY, tileSize, tileSize);
           fill(255, 0, 0);
           ellipse(screenX, screenY, tileSize, tileSize);
           break;
      }
    }
  }
}
