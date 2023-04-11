// ignore_for_file: unused_element

import 'dart:io';

void main() {
  // 11111111 Поменяйте местами значения двух переменных, не используя дополнительных переменных.

  void swap(int a, int b) {
    print("Before swap: a = $a, b = $b");
    a = a + b;
    b = a - b;
    a = a - b;
    print("After swap: a = $a, b = $b");
  }
  // 22222222 Создайте программу, которая просит пользователя ввести свое имя и возраст.
  // Распечатайте сообщение, в котором говорится, сколько лет и как зовут.

  print("Введите ваше имя:");
  String name = stdin.readLineSync()!;
  print("Введите ваш возраст:");
  int age = int.parse(stdin.readLineSync()!);
  print("вас зовут $name и вам $age лет.");

  // 333333Создайте программу, которая просит у пользователя номер.
  //В зависимости от того, подходит номер по длине (является валидным), распечатайте соответствующее сообщение для пользователя.

  stdout.write('Введите номер: ');
  String input = stdin.readLineSync()!;
  if (input.length == 12) {
    print('Введенный номер валидный.');
  } else {
    print('Неверный формат номера.');
  }

  // 444444 Создайте программу, которая в зависимости от текущей погоды подсказывает вам брать зонт или нет.
  // (Подсказка: Нужно создать переменную bool и присвоить ей значение, сделать с помощью тернарного оператора (? : ))

  print('Какая сейчас погода? (введите д/н)');
  String input1 = stdin.readLineSync() ?? '';
  bool isRainy = input.toLowerCase() == 'д';
  bool shouldTakeUmbrella = isRainy ? true : false;
  if (shouldTakeUmbrella) {
    print('Берите зонт с собой!');
  } else {
    print('Зонт не нужен.');
  }

  // 555555 Дано число. Если оно больше 3, то увеличить число на 10, иначе уменьшить на 10.

  int number = 5;
  if (number > 3) {
    number += 10;
  } else {
    number -= 10;
  }
  print(number);

  // 666666 Дано число. Если оно меньше 7, то вывести Yes, если больше 10, то вывести No, если равно 9, то вывести Error.

  int number2 = 12;
  if (number2 < 7) {
    print('Yes');
  } else if (number2 > 10) {
    print('No');
  } else if (number2 == 9) {
    print('Error');
  }

  // 777777 даны два числа. Вывести наибольшее из них.

  int a = 5;
  int b = 10;
  if (a > b) {
    print(a);
  } else {
    print(b);
  }

  // 88888888  Даны два числа. Вывести yes, если их сумма равна 100, иначе вывести No.

  int b1 = 50;
  if (a + b1 == 100) {
    print('Yes');
  } else {
    print('No');
  }

  // 99999999 Пользова+тель вводит номер месяца. Вывести время года(весна, зима, лето)

  stdout.write('Введите номер месяца: ');
  int month = int.parse(stdin.readLineSync()!);
  String season;
  switch (month) {
    case 12:
    case 1:
    case 2:
      season = 'зима';
      break;
    case 3:
    case 4:
    case 5:
      season = 'весна';
      break;
    case 6:
    case 7:
    case 8:
      season = 'лето';
      break;
    case 9:
    case 10:
    case 11:
      season = 'осень';
      break;
    default:
      season = 'некорректный номер месяца';
      break;
  }
  print('Время года: $season');

  // 10000000000   Возьмите список, скажем, например, такой
// a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// и напишите программу. Распечатайте сообщение с элементами меньше 5, обращаясь по индексу.

  List<int> a2 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (int i = 0; i < a2.length; i++) {
    if (a2[i] < 5) {
      print(a2[i]);
    }
  }

  // 111111111 Выведите  на экран строки (в последней строке n звездочек):	*	**	***	****	*****

  int n = 5;
  for (int i = 1; i <= n; i++) {
    String row = '';
    for (int j = 1; j <= i; j++) {
      row += '*';
    }
    print(row);
  }

  // 121212121212121211Необходимо вывести на экран числа от 1 до 5. На экране должно быть:
// 1
// 2
// 3
// 4
// 5

  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  // 1313131313Необходимо вывести на экран числа от 5 до 1. На экране должно быть:
// 5
// 4
// 3
// 2
// 1

  for (int i = 5; i >= 1; i--) {
    print(i);
  }

  // 14    Дано трехзначное число. Переставьте первую и последнюю цифры.

  int number3 = 123;
  int firstDigit = number3 ~/ 100;
  int lastDigit = number3 % 10;
  int middleDigit = (number3 ~/ 10) % 10;
  int newNumber = lastDigit * 100 + middleDigit * 10 + firstDigit;
  print(newNumber);
}
