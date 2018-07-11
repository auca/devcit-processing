final char WALL  = '#';
final char FLOOR = ' ';
final char HERO  = 'H';
final char EXIT  = 'E';

char[][] level1 = {
  { '#', '#', '#', '#', '#', '#', '#' },
  { '#', 'H', ' ', ' ', ' ', ' ', '#' },
  { '#', '#', '#', ' ', '#', ' ', '#' },
  { '#', ' ', ' ', ' ', '#', ' ', '#' },
  { '#', ' ', '#', '#', '#', '#', '#' },
  { '#', ' ', ' ', ' ', ' ', 'E', '#' },
  { '#', '#', '#', '#', '#', '#', '#' }
};

void setup() {
  size(1000, 500);
  background(0);
}

void draw() {
  background(0);

  int fieldSize = min(width, height);
  int cellSize = fieldSize / level1.length;

  int fieldShiftX = width / 2 - fieldSize / 2;
  int fieldShiftY = height / 2 - fieldSize / 2;

  for (int y = 0; y < level1.length; ++y) {
    for (int x = 0; x < level1[y].length; ++x) {
      int screenX = fieldShiftX + x * cellSize;
      int screenY = fieldShiftY + y * cellSize;

      char cell = level1[y][x];
      switch (cell) {
        case WALL:
          fill(100);
          rect(screenX, screenY, cellSize, cellSize);
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
