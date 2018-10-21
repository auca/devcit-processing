import ddf.minim.*;
 
Minim minim;

AudioPlayer coinCollectedSound;

void loadSounds() {
  minim = new Minim(this);
  coinCollectedSound = minim.loadFile("coin.wav");
  // TODO
}
