void setup() {
  fullScreen();

  loadFonts();
  loadImages();
  loadSounds();
  loadLevel();
}

void draw() {
  drawLevel();
  drawPlayer();
  drawHUD();
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
