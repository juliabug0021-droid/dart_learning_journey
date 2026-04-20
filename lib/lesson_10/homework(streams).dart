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

  //task 8
  final controller = StreamController<String>();
  controller.add('Yellow');
  controller.add('White');
  controller.add('Pink');
  controller.stream.listen(
    (value) => print('Колір: $value'),
    onDone: () => print('Стрім завершено!'),
  );
  await controller.close();
}
