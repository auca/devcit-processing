void setup() {
  size(1000, 500);
  background(0);

  loadImages();
  loadNextLevel();
}

void draw() {
  background(0);

  drawLevel();
  drawCoins();
  drawHero();

  updateHero();
  
  fill(255, 0, 0);
  textSize(50);
  text("Coins: "  + heroCoins, 20, 60);
  textSize(49);
  fill(255);
  text("Coins: "  + heroCoins, 21, 60);
}

void keyPressed() {
  //if (key == ' ') {
  //  loadNextLevel();
  //}
  
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
