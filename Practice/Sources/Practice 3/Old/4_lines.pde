int line = 0;
int lineHeight;

void setup() {
  size(500, 500);
  background(0);
  
  lineHeight = height / 5;
}

void draw() {
  // Операторы отношений в языке Java
  //
  //   ==    - оператор сравнения (НЕ ПУТАТЬ с оператором присваивания (=))
  //   !=    - оператор неравенства
  //   a < b - a меньше b? 
  //   a > b - a больше b?
  //   a <= b - a меньше или равно b? 
  //   a >= b - a больше или равно b?
  //
  //   Все операторы возвращают значение либо
  //     true   (правда, да)
  //     false  (ложь, нет)
  
  if (line == 0) {
    fill(0, 0, 0);
  } else if (line == 1) {
    fill(255, 0, 0);
  } else if (line == 2) {
    fill(0, 255, 0);
  } else if (line == 3) {
    fill(0, 0, 255);
  } else {
    fill(255, 255, 255);
  }
  
  boolean even = line % 2 == 0;
  
  rect(0, line * lineHeight, width, lineHeight);
  ++line;
}
