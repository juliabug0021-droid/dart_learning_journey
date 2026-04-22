import 'dart:async';

void main() async {
  //Task 1: Асинхронне отримання імені
  final result1 = await fetchName();
  print('Мене звати $result1');

  //Task 2: Асинхронне отримання віку
  final result2 = await fetchAge(29);
  print(result2);
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

//   //task 3
//   //послідовне виконання Future
//   fetchName().then((_) {
//     fetchAge();
//   });
//   //вимірювання часу виконання методів fetchName та fetchAge
//   final stopwatch1 = Stopwatch();
//   stopwatch1.start();
//   fetchName();
//   stopwatch1.stop();
//   print('Тривалість (fetchName):${stopwatch1.elapsedMicroseconds} мікросекунд');
//   stopwatch1.reset();
//   stopwatch1.start();
//   fetchAge();
//   stopwatch1.stop();
//   print('Тривалість (fetchAge):${stopwatch1.elapsedMicroseconds} мікросекунд');

//   //task 4
//   //паралельне виконання Future
//   Future.wait([fetchName(), fetchAge()]);
//   //вимірювання часу виконання методів fetchName та fetchAge
//   final stopwatch2 = Stopwatch();
//   stopwatch2.start();
//   fetchName();
//   stopwatch2.stop();
//   print('Тривалість (fetchName):${stopwatch2.elapsedMicroseconds} мікросекунд');
//   stopwatch2.reset();
//   stopwatch2.start();
//   fetchAge();
//   stopwatch2.stop();
//   print('Тривалість (fetchAge):${stopwatch2.elapsedMicroseconds} мікросекунд');

//   //task 5
//   //зворотній відлік через 1 секунду
//   Future<void> delayedCountdown(int seconds) async {
//     for (var i = seconds; i > 0; i--) {
//       print(i);
//       await Future<void>.delayed(const Duration(seconds: 1));
//     }
//   }

//   await delayedCountdown(3);
//   print('Старт!');
// }
