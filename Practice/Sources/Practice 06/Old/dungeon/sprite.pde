class Sprite {
  PImage[] images;
  int frame;
  
  int skip, _skip;
  int time = -1;
  
  Sprite(String imagePrefix, int count, String extension) {
    this(imagePrefix, count, extension, 3);
  }
  
  Sprite(String imagePrefix, int count, String extension, int skip) {
    images = new PImage[count];

    if (count <= 10) {
      for (int i = 0; i < count; i++) {
        String fileName = imagePrefix + i + extension;
        images[i] = loadImage(fileName);
      }
    } else if (count <= 100) {
      for (int i = 0; i < count; i++) {
        String fileName = imagePrefix + (i < 10 ? "0" + i : i) + extension;
        images[i] = loadImage(fileName);
      }
    } else {
      // TODO
    }

    this.skip = skip;
    _skip = skip;
  }

  void draw(float x, float y, float width, float height) {
    if (time < 0 || time > 0) {
      _skip--;
      if (_skip < 0) {
        _skip = skip;
        frame = (frame + 1) % images.length;
      }
      if (time > 0) {
        --time;
      }
      
      image(images[frame], x, y, width, height);
    } else {
      image(images[0], x, y, width, height);
    }
  }
}
