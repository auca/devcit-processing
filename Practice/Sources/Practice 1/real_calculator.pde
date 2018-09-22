/*
    Калькулятор действительных чисел.
 */

import javax.swing.*;

size(1280, 720);

float number1 = float(JOptionPane.showInputDialog("Введите первое число? "));
float number2 = float(JOptionPane.showInputDialog("Введите второе число? "));

background(255);
textAlign(CENTER, CENTER);
textSize(100);
fill(255, 0, 0);

int centerX = width / 2;
int centerY = height / 2;

float sum = number1 + number2;
text(number1 + " + " + number2 + " = " + nf(sum, 0, 1), centerX, centerY - 200);

float diff = number1 - number2;
text(number1 + " - " + number2 + " = " + nf(diff, 0, 1), centerX, centerY - 100);

float product = number1 * number2;
text(number1 + " * " + number2 + " = " + nf(product, 0, 1), centerX, centerY);

float quotient = number1 / number2;
text(number1 + " / " + number2 + " = " + nf(quotient, 0, 1), centerX, centerY + 100);

float remainder = number1 % number2;
text(number1 + " % " + number2 + " = " + nf(remainder, 0, 1), centerX, centerY + 200);
