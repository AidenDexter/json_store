import 'package:json_store/json_store.dart';

void main(List<String> arguments) {
  final store = JSONStore('bin/store.json');

  store.setValue('strList', '-_-');
  store.setValue('double', 99);
  print(store.getValue('strList'));
  print(store.getValue('double'));
}
