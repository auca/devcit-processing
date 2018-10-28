final int MENU_STATE    = 0;
final int PLAYING_STATE = 1;
final int PAUSED_STATE  = 2;
final int WON_STATE     = 3;

int gameState = MENU_STATE;

void setup() {
  fullScreen();

  loadFonts();
  loadImages();
  loadSounds();
  loadLevel();
}

void draw() {
  switch (gameState) {
    case MENU_STATE:
      drawMenu();
      break;
    case PLAYING_STATE:
      drawWhilePlaying();
      break;
    case PAUSED_STATE:
      drawWhilePaused();
      break;
    case WON_STATE:
      drawIfWon();
      break;
  }
}

void keyPressed() {
  switch (gameState) {
    case MENU_STATE:
      keyPressedInMenu(); //<>//
      break;
    case PLAYING_STATE:
      keyPressedWhilePlaying(); //<>//
      break;
    case PAUSED_STATE:
      keyPressedOnPause();
      break;
    case WON_STATE:
      keyPressedIfWon();
      break;
  }
}
