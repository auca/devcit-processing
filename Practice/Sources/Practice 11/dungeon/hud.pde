final int PLAYER_SCORE_TEXT_SIZE  = 200,
          PLAYER_SCORE_TEXT_COLOR = 0xFFFFFFFF,
          PLAYER_SCORE_MARGIN_LEFT = 50,
          PLAYER_SCORE_MARGIN_TOP  = 150;

void drawHUD() {
  drawPlayerScore();
}

void drawPlayerScore() {
  fill(PLAYER_SCORE_TEXT_COLOR);
  textFont(hudFont);
  textSize(PLAYER_SCORE_TEXT_SIZE);
  text(playerScore, PLAYER_SCORE_MARGIN_LEFT, PLAYER_SCORE_MARGIN_TOP);
}
