void keyPressedInMenu() {
  if (keyCode == ENTER) {
     gameState = PLAYING_STATE;
  }
}

void keyPressedWhilePlaying() {
  switch (keyCode) { //<>//
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
    case ESC:
      gameState = PAUSED_STATE;
      key = 0;
      break;
  }
}

void keyPressedOnPause() {
  if (keyCode == ESC || keyCode == ENTER) {
    key = 0; 
    gameState = PLAYING_STATE;
  }
}

void keyPressedIfWon() {
  if (keyCode == ENTER) {
    gameState = MENU_STATE;
    playerScore = 0;
    wonEffectAngle = 0;
  }
}
