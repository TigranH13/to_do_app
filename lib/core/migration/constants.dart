import 'package:journey/journey.dart';
import 'package:to_do_app/core/migration/miagrate_hive_to_isar.dart';

final migrations = Journey(
  migrations: [
    MigrateHiveToIsar(),
  ],
);
