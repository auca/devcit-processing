int rectHeight;

int rectNumber = 1;
int y = 0;

void setup() {
  size(500, 500);
  background(0); 
  noStroke();
  
  rectHeight = 10;
}

void draw() {
  /*
  if (rectNumber == 1) {
    fill(0);
  } else if (rectNumber == 2) {
    fill(255, 0, 0);
  } else if (rectNumber == 3) {
    fill(0, 255, 0);
  } else if (rectNumber == 4) {
    fill(0, 0, 255);
  } else if (rectNumber == 5) {
    fill(255);
    rectNumber = 0;
  }
  */
  
  switch(rectNumber) {
    case 1:
      fill(0);
      break;
    case 2:
      fill(255, 0, 0);
      break;
    case 3:
      fill(0, 255, 0);
      break;
    case 4:
      fill(0, 0, 255);
      break;
    case 5:
      fill(255);
      rectNumber = 0;
      break;
  }

  rect(0, y, width, rectHeight);

  y = y + rectHeight;
  rectNumber = rectNumber + 1;
}
