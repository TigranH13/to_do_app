import 'package:hive_flutter/adapters.dart';
import 'package:isar/isar.dart';
import 'package:journey/journey.dart';
import 'package:path_provider/path_provider.dart';
import 'package:to_do_app/domain/models/todo_model.dart';

class MigrateHiveToIsar extends Migration {
  late Future<Isar> db;

  MigrateHiveToIsar() {
    db = _openDb();
  }

  @override
  String get id => 'isrsdaasca';

  Future<Isar> _openDb() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open([TaskSchema],
          inspector: true, directory: dir.path);
    }
    return Future.value(
      Isar.getInstance(),
    );
  }

  @override
  Future<MigrationResult> migrate() async {
    final hiveBox = await Hive.openBox('mybox', path: 'todos');
    final isar = await db;

    for (var i = 0; i < hiveBox.length; i++) {
      final hiveData = hiveBox.getAt(i);
      final model = Task(title: '')..title = hiveData['title'];
      await isar.writeTxn(
        () async {
          await isar.tasks.put(model);
        },
      );
    }
    await hiveBox.clear();
    await hiveBox.close();

    return MigrationResult.successful;
  }
}
