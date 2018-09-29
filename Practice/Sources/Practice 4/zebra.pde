int rectHeight;

int rectNumber = 1;
int y = 0;

void setup() {
  size(500, 500);
  background(0); 
  
  rectHeight = 50;
}

void draw() {
  /*
    Решение 1 с конструкцией if с одной веткой
   */
  //fill(0);
  //if (rectNumber % 2 == 0) {
  //  fill(255);
  //}

  /*
    Решение 2 с конструкцией if с двумф ветвями
   */
  if (rectNumber % 2 == 0) {
    fill(255);
  } else {
    fill(0);
  }
  
  rect(0, y, width, rectHeight);

  y = y + rectHeight;
  rectNumber = rectNumber + 1;
}
