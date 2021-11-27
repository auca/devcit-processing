/*
  Игра Dungeon
 */

void setup() {
  fullScreen();
  background(0);
  
  loadNextLevel();
}

void draw() {
  background(0);
  
  drawLevel();
  drawPlayer();
  drawPlayerScore();
}

void keyPressed() {
  if (keyCode == UP) {
    movePlayer(0, -1);
  } else if (keyCode == DOWN) {
    movePlayer(0, 1);
  } else if (keyCode == LEFT) {
    movePlayer(-1, 0);
  } else if (keyCode == RIGHT) {
    movePlayer(1, 0);
  }
}
