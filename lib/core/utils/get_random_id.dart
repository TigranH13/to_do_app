import 'package:uuid/uuid.dart';

class Utils {
  String getRandomId() {
    final id = const Uuid().v6();
    return id;
  }
}
