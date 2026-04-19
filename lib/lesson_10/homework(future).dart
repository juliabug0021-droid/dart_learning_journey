import 'dart:async';

void main() async {
  //task 1
  Future<String> fetchName() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    return 'Юлія';
  }

  final result = await fetchName();
  print('Мене звати $result');

  //task 2
  Future<int> fetchAge() async {
    await Future<void>.delayed(const Duration(milliseconds: 1500));
    return 29;
  }

  final age = await fetchAge();
  if (age % 100 >= 11 && age % 100 <= 14) {
    print('Мені $age років');
    return;
  }
  switch (age % 10) {
    case 1:
      print('Мені $age рік');
    case 2 || 3 || 4:
      print('Мені $age роки');
    case 5 || 6 || 7 || 8 || 9 || 0:
      print('Мені $age років');
  }
  //task 3
  //послідовне виконання Future
  fetchName().then((_) {
    fetchAge();
  });
  //вимірювання часу виконання методів fetchName та fetchAge
  final stopwatch1 = Stopwatch();
  stopwatch1.start();
  fetchName();
  stopwatch1.stop();
  print('Тривалість (fetchName):${stopwatch1.elapsedMicroseconds} мікросекунд');
  stopwatch1.reset();
  stopwatch1.start();
  fetchAge();
  stopwatch1.stop();
  print('Тривалість (fetchAge):${stopwatch1.elapsedMicroseconds} мікросекунд');

  //task 4
  //паралельне виконання Future
  Future.wait([fetchName(), fetchAge()]);
  //вимірювання часу виконання методів fetchName та fetchAge
  final stopwatch2 = Stopwatch();
  stopwatch2.start();
  fetchName();
  stopwatch2.stop();
  print('Тривалість (fetchName):${stopwatch2.elapsedMicroseconds} мікросекунд');
  stopwatch2.reset();
  stopwatch2.start();
  fetchAge();
  stopwatch2.stop();
  print('Тривалість (fetchAge):${stopwatch2.elapsedMicroseconds} мікросекунд');

  //task 5
  //зворотній відлік через 1 секунду
  Future<void> delayedCountdown(int seconds) async {
    for (var i = seconds; i > 0; i--) {
      print(i);
      await Future<void>.delayed(const Duration(seconds: 1));
    }
  }

  await delayedCountdown(3);
  print('Старт!');
}
