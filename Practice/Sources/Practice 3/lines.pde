int line = 0;
int lineHeight;

void setup() {
  size(500, 500);
  background(0);
  
  lineHeight = height / 2;
}

void draw() {
  if (line == 0) {
    fill(0);
  } else {
    fill(255);
  }

  rect(0, line * lineHeight, width, lineHeight);
  ++line;
}
