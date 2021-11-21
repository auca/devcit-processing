/*
  Игра Dungeon
 */

void setup() {
  fullScreen();
  background(0);
  
  levelIndex = 2;
  loadLevel();
}

void draw() {
  drawLevel();
}
