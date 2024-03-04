import 'package:collection/collection.dart';

import 'json_file.dart';

class JSONStore {
  final JSONFile _file;
  JSONStore(String path) : _file = JSONFile(path);
}
