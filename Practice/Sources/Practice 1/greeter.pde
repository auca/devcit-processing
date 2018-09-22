/*
    Программа приветсвия пользователя.
 */
import javax.swing.*;

size(1280, 720);

// String a; // < определение переменной
/*
  Теперь мы инициализируем выделенную память
  выше строкой с клавиатуры.
*/
// fullname = JOptionPane.showInputDialog("Enter your name: ");
//          ^ присваивание строки текста в переменную fullname

// Определение и инициализация одной инструкцией
String fullname = JOptionPane.showInputDialog("Enter your name: ");

background(255); // E
textAlign(CENTER, CENTER);
textSize(100);
fill(255, 0, 0);
text("Hello, " + fullname + "!", 1280 / 2, 720 / 2);
           //  ^ конкатенация (соедиение строк)

