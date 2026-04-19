import 'package:git_lesson/lesson_07/homework/names_deepseek.dart';
import 'package:git_lesson/lesson_07/homework/names_gpt.dart';

void main() {
  final allNames = ukrainianNamesDeepseek.union(ukrainianNamesGPT);
  print('Кількість унікальних імен: ${allNames.length}');
  final difference1 = ukrainianNamesGPT.difference(ukrainianNamesDeepseek);
  print('difference1: $difference1');
  final difference2 = ukrainianNamesDeepseek.difference(ukrainianNamesGPT);
  print('difference2: $difference2');
}
