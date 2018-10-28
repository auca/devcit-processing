void drawMenu() {
  background(0);
  fill(255, 0, 0);
  textAlign(CENTER, CENTER);
  textFont(hudFont);
  textSize(200);
  text("DUNGEON", cx, cy);
  textSize(50);
  fill(255);
  text("Press Enter to play", cx, cy + 100);
}

void drawWhilePlaying() {
  drawLevel();
  drawPlayer();
  drawHUD();
}

void drawWhilePaused() {
  background(0);
  fill(255);
  textFont(hudFont);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("Press ESC to continue", cx, cy);
}

void drawIfWon() {
  background(0);
  pushMatrix();
  translate(cx, cy);
  noStroke();
  for (int i = 0; i < 100; ++i) {
    translate(i * 5, 0);
    rotate(wonEffectAngle);
    wonEffectAngle += 0.00005f;
    fill(200 * i / 100.0f);
    rect(0, 0, 100, 100);
  }
  popMatrix();

  fill(255, 0, 0);
  textAlign(CENTER, CENTER);
  textFont(hudFont);
  textSize(200);
  text("You Won", cx, cy);
  textSize(50);
  fill(255);
  text("You score " + playerScore, cx, cy + 100);
  text("Press Enter to restart", cx, cy + 200);
}
