import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/core/error/exceptions.dart';

import 'package:to_do_app/features/tasks/data/datasources/task_data_source.dart';

import '../../domain/models/task.dart';

@injectable
class RemoteDataSourceImpl implements ITaskDataSource {
  final usersCollection = FirebaseFirestore.instance.collection('users');

  @override
  Future<void> editTask(
      {required Task task, required DateTime? scheduleTime}) async {
    try {
      final curentUserEmail = FirebaseAuth.instance.currentUser!.email;
      await usersCollection
          .doc(curentUserEmail)
          .collection('tasks')
          .doc(task.id)
          .set(
            task.toJson(),
          );
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<void> removeTask({required Task task}) async {
    try {
      final curentUserEmail = FirebaseAuth.instance.currentUser!.email;
      await usersCollection
          .doc(curentUserEmail)
          .collection('tasks')
          .doc(task.id)
          .delete();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<void> saveTask({required Task task}) async {
    try {
      final curentUserEmail = FirebaseAuth.instance.currentUser!.email;
      await usersCollection
          .doc(curentUserEmail)
          .collection('tasks')
          .doc(task.id)
          .delete();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<Task>> getTasks() async {
    try {
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
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<void> cacheRemovedTask({required Task task}) async {
    try {
      final curentUserEmail = FirebaseAuth.instance.currentUser!.email;
      await usersCollection
          .doc(curentUserEmail)
          .collection('removedtasks')
          .doc(task.id)
          .set(task.toJson());
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<void> clearRemovedTaskCache() async {
    try {
      final curentUserEmail = FirebaseAuth.instance.currentUser!.email;
      usersCollection
          .doc(curentUserEmail)
          .collection('removedtasks')
          .doc()
          .delete();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<void> clearTaskStorage() async {
    try {
      final curentUserEmail = FirebaseAuth.instance.currentUser!.email;
      await usersCollection.doc(curentUserEmail).delete();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<Task>> getRemovedTaskCache() async {
    try {
      final curentUserEmail = FirebaseAuth.instance.currentUser!.email;
      QuerySnapshot<Map<String, dynamic>> querySnapshot = await usersCollection
          .doc(curentUserEmail)
          .collection('removedtasks')
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
    } catch (e) {
      throw ServerException();
    }
  }
}
