import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import 'package:to_do_app/tasks/data/datasources/task_remote_data_source.dart';

import '../../domain/models/task.dart';

@injectable
class RemoteDataSourceImpl implements ITaskDataRemoteSource {
  final usersCollection = FirebaseFirestore.instance.collection('users');

  @override
  Future<void> editTask(
      {required Task task, required DateTime? scheduleTime}) async {
    final curentUserEmail = FirebaseAuth.instance.currentUser!.email;
    await usersCollection
        .doc(curentUserEmail)
        .collection('tasks')
        .doc(task.forId)
        .set(
          task.toJson(),
        );
  }

  @override
  Future<void> removeTask({required Task task}) async {
    final curentUserEmail = FirebaseAuth.instance.currentUser!.email;
    await usersCollection
        .doc(curentUserEmail)
        .collection('tasks')
        .doc(task.forId)
        .delete();
  }

  @override
  Future<void> saveTask({required Task task}) async {
    final curentUserEmail = FirebaseAuth.instance.currentUser!.email;
    await usersCollection
        .doc(curentUserEmail)
        .collection('tasks')
        .doc(task.forId)
        .set(task.toJson());
  }

  @override
  Future<List<Task>> getTasks() async {
    final curentUserEmail = FirebaseAuth.instance.currentUser!.email;
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await usersCollection
        .doc(curentUserEmail)
        .collection('tasks')
        .orderBy('scheduleTime', descending: true)
        .get();

    List<Task> tasks = [];
    for (var doc in querySnapshot.docs) {
      tasks.add(
        Task.fromJson(
          doc.data(),
        ),
      );
    }

    return tasks;
  }
}
