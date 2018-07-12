int levelWidth;
int levelHeight;

int cellSize;

int fieldWidth;
int fieldHeight;

int fieldShiftX;
int fieldShiftY;

PImage wallImage;

void loadImages() {
  wallImage = loadImage("wall_large.png");
}

void calculateScreenData(char[][] level) {
  levelWidth = level[0].length;
  levelHeight = level.length;

  cellSize = min(width / levelWidth, height / levelHeight);

  fieldWidth = levelWidth * cellSize;
  fieldHeight = levelHeight * cellSize;

  fieldShiftX = (width - fieldWidth) / 2;
  fieldShiftY = (height - fieldHeight) / 2; 
}
