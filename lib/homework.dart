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
  fetchName().then((_) {
    fetchAge();
  });
  //вимірювання часу виконання методів fetchName та fetchAge
  final stopwatch = Stopwatch();
  stopwatch.start();
  fetchName();
  stopwatch.stop();
  print(stopwatch.elapsedMicroseconds);
  stopwatch.reset();
  stopwatch.start();
  fetchAge();
  stopwatch.stop();
  print(stopwatch.elapsedMicroseconds);
}
