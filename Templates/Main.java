import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int a = scanner.nextInt(); // считывание данных, nextFloat() и nextDouble для float и double
        int b = scanner.nextInt();
        double c = Math.sqrt(a * a + b * b);

        System.out.println(c); // вывод информации
    }
}
