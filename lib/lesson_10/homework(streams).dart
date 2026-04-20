import 'dart:async';

void main() async {
  //task 6
  final iterableStream = Stream.fromIterable([1, 2, 3, 4, 5]);
  await for (final value in iterableStream) {
    print('метод await for: $value');
  }
  iterableStream.listen((value) => print('метод listen: $value'));
}
