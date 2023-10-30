import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app/tasks/domain/models/task.dart';

part 'my_user.g.dart';

@JsonSerializable()
class MyUser {
  final String userName;
  final String userEmail;
  final List<Task> tasks;

  MyUser({
    required this.tasks,
    required this.userName,
    required this.userEmail,
  });

  factory MyUser.fromJson(Map<String, dynamic> json) => _$MyUserFromJson(json);

  Map<String, dynamic> toJson() => _$MyUserToJson(this);
}
