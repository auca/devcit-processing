float cellSize;
float gameAreaWidth;
float gameAreaHeight;
float centerShiftX;
float centerShiftY;

void initScreenData() {
  cellSize = min(width / levelWidth, height / levelHeight);
  gameAreaWidth = levelWidth * cellSize;
  gameAreaHeight = levelHeight * cellSize;
  centerShiftX = (width - gameAreaWidth) * 0.5f;
  centerShiftY = (height - gameAreaHeight) * 0.5f;
}
