import 'package:firebase_auth/firebase_auth.dart';

import 'package:hive/hive.dart';

part 'acount.g.dart';

@HiveType(typeId: 1)
class Acount {
  @HiveField(0)
  final String userName;

  @HiveField(1)
  final String userEmail;

  @HiveField(2)
  final AuthCredential credential;

  Acount({
    required this.credential,
    required this.userName,
    required this.userEmail,
  });
}
