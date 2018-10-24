import ddf.minim.*;

Minim minim;

AudioPlayer coinSound;

void loadSounds() {
  minim = new Minim(this);

  coinSound = minim.loadFile("coin.wav");
}
