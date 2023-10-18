import 'package:hive_flutter/adapters.dart';
import 'package:isar/isar.dart';
import 'package:journey/journey.dart';
import 'package:path_provider/path_provider.dart';
import 'package:to_do_app/domain/models/todo_model.dart';
import 'package:to_do_app/core/utils/get_random_id.dart';

class MigrateHiveToIsar extends Migration {
  late Future<Isar> db;

  MigrateHiveToIsar() {
    db = _openDb();
  }

  @override
  String get id => 'iiiiii';

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
    print('tichi');
    final hiveBox = Hive.box('mybox');
    final isar = await db;

    for (var i = 0; i < hiveBox.length; i++) {
      final Task hiveData = hiveBox.getAt(i);
      final Task model = Task(title: '', forId: Utils().getRandomId());

      model.title = hiveData.title;
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
