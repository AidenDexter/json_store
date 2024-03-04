import 'package:json_store/json_store.dart';

void main(List<String> arguments) {
  final store = JSONStore('bin/store.json');
  store.setValue('map', <String, int>{'a': 1, 'b': 2});
  store.setValue('strList', <String>['a', 'b', 'c']);
  store.setValue('intList', <int>[1, 2, 3]);
  var strList = store
      .getList(
        'strList',
      )
      ?.cast<String>()
      .toList();
  var intList = store.getList('intList')?.cast<int>().toList();
  var myMap = Map<String, int>.from(
    store.getMap('map')?.cast<String, int>() ?? {},
  );
  print(strList.runtimeType);
  print(intList.runtimeType);
  print(myMap.runtimeType);
  print(strList);
  print(intList);
  print(myMap);
}
