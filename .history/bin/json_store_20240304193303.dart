import 'package:json_store/json_store.dart';

void main(List<String> arguments) {
  final store = JSONStore('bin/store.json');

  store.resetValue('map');
  store.resetValue('str');
  print(store.getValue('map'));
  print(store.getValue('srt'));
}
