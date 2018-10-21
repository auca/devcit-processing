final int MENU_STATE    = 0;
final int PLAYING_STATE = 1;
final int PAUSED_STATE  = 2;
final int WON_STATE     = 3;

int state = MENU_STATE;

void setup() {
  size(1280, 720);
  background(0);
  
  loadFonts();
  loadImages();
  loadSounds();
  loadNextLevel();
}

void draw() {
  background(0);
  
  switch (state) {
    case MENU_STATE:
      processMenuState();
      break;
    case PLAYING_STATE:
      processPlayingState();
      break;
    case PAUSED_STATE:
      processPausedState();
      break;
    case WON_STATE:
      processWonState();
      break;
  }
}

void keyPressed() {
  switch (state) {
    case MENU_STATE:
      processInputForMenuState();
      break;
    case PLAYING_STATE:
      processInputForPlayingState();
      break;
    case PAUSED_STATE:
      processInputForPausedState();
      break;
    case WON_STATE:
      processInputForWonState();
      break;
  }
}

void processMenuState() {
  fill(255);
  textSize(140);
  textAlign(CENTER, CENTER);
  text("Dungeon", width / 2, height / 2);
  
  textSize(20);
  text("Press Enter to start the game", width / 2, height / 2 + 150);
}

void processPlayingState() {
  drawLevel();
  drawCoins();
  drawHero();
  drawHeroCoinCount();
}

void processPausedState() {
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Press Esc to continue", width / 2, height / 2);
}

void processWonState() {
  fill(0xFFFCCA63);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("You won! Coins collected " + heroCoins, width / 2, height / 2);
  
  fill(255);
  textSize(20);
  text("Press Enter to start a new game", width / 2, height / 2 + 150);
}

void processInputForMenuState() {
  if (keyCode == ENTER) {
    state = PLAYING_STATE;
  }
}

void processInputForPlayingState() {
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
    case ESC:
      state = PAUSED_STATE;
      key = 0;
      break;
  }
}

void processInputForPausedState() {
  if (keyCode == ESC) {
    state = PLAYING_STATE;
    key = 0;
  }
}

void processInputForWonState() {
  if (keyCode == ENTER) {
    heroCoins = 0;
    state = MENU_STATE;
  }
}
