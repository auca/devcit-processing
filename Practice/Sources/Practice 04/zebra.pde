final float LINE_COUNT = 10;

float y = 0;
int i = 0;

void setup() {
  fullScreen();
  background(0);
}

void draw() {
  final float LINE_HEIGHT = height / LINE_COUNT;
  
  if (i % 2 == 0) {
    fill(0);
  } else {
    fill(255);
  }
    
  rect(0, y, width, LINE_HEIGHT);
  y += LINE_HEIGHT;
  i++;
}
