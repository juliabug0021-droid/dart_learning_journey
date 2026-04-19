import 'dart:async';

void main() async {
  //task 1
  Future<String> fetchName() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    return 'Юлія';
  }

  final result = await fetchName();
  print('Мене звати $result');
}
