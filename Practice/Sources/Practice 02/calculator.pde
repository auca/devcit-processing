import javax.swing.JOptionPane;

size(1000, 500);
background(255);

textSize(60);
textAlign(CENTER, CENTER);
fill(255, 0, 0);

int number1 =
  int(JOptionPane.showInputDialog("Введите первое число"));
int number2 =
  int(JOptionPane.showInputDialog("Введите второе число"));

int sum = number1 + number2;
int diff = number1 - number2;
int product = number1 * number2;
int quotient = number1 / number2; 
int remainder = number1 % number2;

String message;

message = number1 + " + " + number2 + " = " + sum;
text(message, 500, 130);

message = number1 + " - " + number2 + " = " + diff;
text(message, 500, 190);

message = number1 + " * " + number2 + " = " + product;
text(message, 500, 250);

message = number1 + " / " + number2 + " = " + quotient;
text(message, 500, 310);

message = number1 + " % " + number2 + " = " + remainder;
text(message, 500, 370);
