import 'dart:math';

void main() {
  task1();
}

void task1() {
  final numbers = List.generate(100, (index) {
    return Random().nextInt(101);
  });
  print(numbers);
  print('------------------------------');
  print('65-й елемент: ${numbers[65]}');
  print('------------------------------');
  numbers[50] = 1000000000;
  print('Numbers after changing: $numbers');
  print('------------------------------');
  numbers.remove(24);
  numbers.remove(45);
  numbers.remove(66);
  numbers.remove(88);
  print('Numbers after removing: $numbers');
  print('------------------------------');

  var sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sum += numbers[i];
    }
  }
  print('Сума чисел, що діляться на 3: $sum');
  print('------------------------------');

  final temp = [];
  for (final number in numbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }
  print('Список temp: $temp');
  print('Довжина списку temp: ${temp.length}');
}
