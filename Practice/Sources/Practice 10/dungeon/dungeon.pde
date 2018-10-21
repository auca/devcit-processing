void setup() {
  size(1280, 720);
  background(0);
  
  loadLevel();
}

void draw() {
  background(0);
  drawLevel();
  drawPlayer();
}

void keyPressed() {
  switch (keyCode) {
    case UP:
      movePlayer(0, -1);
      break;
    case DOWN:
      movePlayer(0, 1);
      break;
    case LEFT:
      movePlayer(-1, 0);
      break;
    case RIGHT:
      movePlayer(1, 0);
      break;
  }
}
