import 'package:json_store/json_store.dart';

void main(List<String> arguments) {
  final store = JSONStore('bin/store.json');
  store.setValue('strList', <String>['a', 'b', 'c']);
  store.setValue('int', 55);
  store.setValue('bool', true);
  store.setValue('double', 3.14);
  store.setValue('map', <String, int>{'a': 1, 'b': 2});
  store.setValue('str', '(づ˶•༝•˶)づ♡');
  print(store.values);
  print(store.keys);
  print(store.contains('strList'));
  print(store.getValue('strList'));
  print(store.getValue('int'));
}
