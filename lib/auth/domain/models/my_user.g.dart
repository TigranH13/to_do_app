// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyUser _$MyUserFromJson(Map<String, dynamic> json) => MyUser(
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
      userName: json['userName'] as String,
      userEmail: json['userEmail'] as String,
    );

Map<String, dynamic> _$MyUserToJson(MyUser instance) => <String, dynamic>{
      'userName': instance.userName,
      'userEmail': instance.userEmail,
      'tasks': instance.tasks,
    };
