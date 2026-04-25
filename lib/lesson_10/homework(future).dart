import 'dart:async';

void main() async {
  //Task 1: Асинхронне отримання імені
  final result1 = await fetchName();
  print('Мене звати $result1');

  //Task 2: Асинхронне отримання віку
  final age = 29;
  final result2 = await fetchAge(age);
  print(result2);

  //Task 3: Послідовне виконання Future
  final stopwatch = Stopwatch();
  stopwatch.start();
  await fetchName();
  await fetchAge(age);
  stopwatch.stop();
  print('Послідовне виконання:${stopwatch.elapsedMilliseconds} мілісекунд');

  //Task 4: Паралельне виконання Future (Future.wait)
  stopwatch.reset();
  stopwatch.start();
  await Future.wait([fetchName(), fetchAge(age)]);
  stopwatch.stop();
  print('Паралельне виконання:${stopwatch.elapsedMilliseconds} мілісекунд');

  //Task 5: Зворотний відлік з затримкою
  await delayedCountdown(3);
  print('Старт!');
}

//Task 1: Асинхронне отримання імені
Future<String> fetchName() async {
  await Future<void>.delayed(const Duration(seconds: 2));
  return 'Юлія';
}

//Task 2: Асинхронне отримання віку
Future<String> fetchAge(int age) async {
  await Future<void>.delayed(const Duration(milliseconds: 1500));
  if (age % 100 >= 11 && age % 100 <= 14) {
    return 'Мені $age років';
  }
  switch (age % 10) {
    case 1:
      return 'Мені $age рік';
    case 2 || 3 || 4:
      return 'Мені $age роки';
    case 5 || 6 || 7 || 8 || 9 || 0:
      return 'Мені $age років';
    default:
      return 'Мені $age років';
  }
}

//Task 5: Зворотний відлік з затримкою
Future<void> delayedCountdown(int seconds) async {
  for (var i = seconds; i > 0; i--) {
    print(i);
    await Future<void>.delayed(const Duration(seconds: 1));
  }
}
