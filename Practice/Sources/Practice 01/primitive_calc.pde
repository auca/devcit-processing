import javax.swing.JOptionPane;

size(1000, 500);
background(255);
fill(255, 0, 0);
textSize(50);
textAlign(CENTER, CENTER);

long number1 = int(JOptionPane.showInputDialog("Введите первое число"));
long number2 = int(JOptionPane.showInputDialog("Введите второе число"));
long result = number1 + number2;

String message = number1 + " + " + number2 + " = " + result;

text(message, 500, 250);
