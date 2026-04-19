import 'package:mocky/mocky.dart';

void main() {
  // Use Ukrainian locale (default)
  Mocky.setLocale(Locale.uk);

  final randomNouns = Mocky.words(100);
  print(randomNouns);
  print('------------------------------');
  final nounsMap = <String, int>{};
  for (final nouns in randomNouns) {
    nounsMap[nouns] = nouns.length;
  }
  print('nounsMap: $nounsMap');
  // Ледве не зламала мозок, без чату GPT не впоралася б, точно.
  print('------------------------------');
  final nounsMapFiltered = <String, int>{};
  for (final entry in nounsMap.entries) {
    if (entry.value % 2 == 0) {
      nounsMapFiltered[entry.key] = entry.value;
    }
  }
  print('nounsMapFiltered: $nounsMapFiltered');
  //Тут хотіла зробити ітерацію лише по значенням, але не знаю як додати потім
  //пару ключ-значення в нову мапу. Чат Gpt знову ж таки, підказав як робити.
}
