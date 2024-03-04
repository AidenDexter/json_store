import 'package:collection/collection.dart';

import 'json_file.dart';

class JSONStore {
  final JSONFile _file;
  JSONStore(String path) : _file = JSONFile(path);

  Map<String, Object>? _values;
  String get path => _file.path;
  bool contains(String key) {
    return _getValues().containsKey(key);
  }

  List<String> get keys {
    return List.unmodifiable(_getValues().keys);
  }

List<Object> get values{return List.unmodifiable(_values ?? _file.read() ?? {}).values,}

}
