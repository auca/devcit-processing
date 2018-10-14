void setup() {
  size(1280, 720);
  background(0);
  
  final int COUNT = 200;
  for (int i = 0; i < COUNT; ++i) {
    float randomX = random(0, width);
    float randomY = random(0, height);
    float randomRadius = random(5, 50);
    int randomLineCount = (int) random(6, 20);
    int randomColor = 0xFF000000 | (int) random(16581375);

    drawStar(
      randomLineCount,
      randomRadius,
      randomX, 
      randomY,
      randomRadius * 0.05f,
      randomColor
    );
  }
}
