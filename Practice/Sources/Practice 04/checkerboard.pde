int rectHeight;

int rectNumber = 1;

int x = 0;
int y = 0;

void setup() {
  size(500, 500);
  background(0); 
  
  rectHeight = 10;
}

void draw() {
  if (rectNumber % 2 == 0) {
    fill(0);
  } else {
    fill(255);
  }
  
  rect(x, y, rectHeight, rectHeight);
  
  x += rectHeight;
  if (x > width) {
    y += rectHeight;
    x = 0;
  }

  ++rectNumber;
  
  //delay(600);
}
