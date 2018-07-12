void setup() {
  size(1000, 500);
  background(0);

  loadImages();
  loadNextLevel();
}

void draw() {
  background(0);

  drawLevel();
}

void keyPressed() {
  if (key == ' ') {
    loadNextLevel();
  }
}
