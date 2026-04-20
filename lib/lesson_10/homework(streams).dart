import 'dart:async';

void main() async {
  //task 6
  final iterableStream = Stream.fromIterable([1, 2, 3, 4, 5]);
  await for (final value in iterableStream) {
    print('метод await for: $value');
  }
  iterableStream.listen((value) => print('метод listen: $value'));

  //task 7
  final timerStream = Stream.periodic(Duration(seconds: 1), (i) => i).take(10);
  await for (final value in timerStream) {
    print('"$value..."');
  }
}
