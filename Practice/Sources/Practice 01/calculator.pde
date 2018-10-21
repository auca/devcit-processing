/*
    Простой целочисленный калькулятор.
 */

import javax.swing.*; // Подключение библиотеки для считывания данных с клавиатуры.

size(1280, 720); // Установка размера окна в пикселях (1280 в ширину, 720 в высоту).

int number1; // Определение переменной с именем number1.
number1 = int(JOptionPane.showInputDialog("Введите первое число? ")); // Инициализация переменной с именем number1.
int number2 = int(JOptionPane.showInputDialog("Введите второе число? "));
// Определение и инициализация переменной number2 одновременно.

background(255); // Установка цвета фона в белый.
textAlign(CENTER, CENTER); // Установка центрирования текста относительно курсора.
textSize(100); // Установка размера текста.
fill(255, 0, 0); // Установка цвета заливки для всех последующих фигур.

int centerX = width / 2;
int centerY = height / 2;

int sum; // Создание переменной sum.
sum = number1 + number2;
//    ^ Выражение сложения двух чисел с последующим присваиванием к переменной sum
text(number1 + " + " + number2 + " = " + sum, centerX, centerY - 200); // Печеть текста на экран.
//                                                                ^ Поднимаем текст на 200 пикселей выше от центра для
//                                                                  вертикального центрирования.

int diff = number1 - number2; // Вычитание
text(number1 + " - " + number2 + " = " + diff, centerX, centerY - 100);

int product = number1 * number2; // Умножение
text(number1 + " * " + number2 + " = " + product, centerX, centerY);

int quotient = number1 / number2; // Деление
text(number1 + " / " + number2 + " = " + quotient, centerX, centerY + 100);

int remainder = number1 % number2; ; // Остаток от деления
text(number1 + " % " + number2 + " = " + remainder, centerX, centerY + 200);
