void setup() {
  size(1280, 720);
  background(0);
  
  loadImages();
  loadSounds();
  loadNextLevel();
}

void draw() {
  background(0);
  
  drawLevel();
  drawCoins();
  drawHero();
  drawHeroCoinCount();
}

void keyPressed() {
  switch (keyCode) {
    case UP:
      moveHero(0, -1);
      break;
    case DOWN:
      moveHero(0, 1);
      break;
    case LEFT:
      moveHero(-1, 0);
      break;
    case RIGHT:
      moveHero(1, 0);
      break;
  }
}
