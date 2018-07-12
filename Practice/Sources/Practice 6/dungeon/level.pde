int selectedLevel = -1;

void loadNextLevel() {
  ++selectedLevel;
  if (selectedLevel >= LEVELS.length) {
    selectedLevel = 0;
  }
  
  calculateScreenData(LEVELS[selectedLevel]); 
}

void drawLevel() {
  drawLevel(LEVELS[selectedLevel]);
}

void drawLevel(char[][] level) {
  for (int y = 0; y < level.length; ++y) {
    for (int x = 0; x < level[y].length; ++x) {
      int screenX = fieldShiftX + x * cellSize;
      int screenY = fieldShiftY + y * cellSize;

      char cell = level[y][x];
      switch (cell) {
      case WALL:
        fill(100);
        image(wallImage, screenX, screenY, cellSize, cellSize);
        break;
      case FLOOR:
        fill(10);
        rect(screenX, screenY, cellSize, cellSize);
        break;
      case HERO:
        fill(255, 0, 0);
        ellipseMode(CORNER);
        ellipse(screenX, screenY, cellSize, cellSize);
        break;
      case EXIT:
        fill(0, 255, 0);
        rect(screenX, screenY, cellSize, cellSize);
        break;
      }
    }
  }
}
