// import 'package:bloc_test/bloc_test.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/annotations.dart';
// import 'package:to_do_app/application/bloc/todo_bloc.dart';
// import 'package:to_do_app/domain/tasks/i_todos_repository.dart';
// import 'package:to_do_app/domain/tasks/models/task.dart';
// import 'package:to_do_app/infrastructure/todos_impl_wtih_isr.dart';

// import 'todo_bloc_test.mocks.dart';

// @GenerateNiceMocks([MockSpec<ITasksRepository>()])
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   MockTodosRepositoryImplWithIsr mockTaskRepo;

//   late TodoBloc todoBloc;
//   final Task ts = Task(
//     forId: 's',
//     title: 'sa',
//     scheduleTime: DateTime.now(),
//   );

//   setUp(() {
//     EquatableConfig.stringify = true;

//     mockTaskRepo = MockTodosRepositoryImplWithIsr();
//     todoBloc = TodoBloc(
//       todosRepositoryImplWithIsr: mockTaskRepo,
//     );
//   });

//   test('initialState should be Empty', () {
//     // assert
//     expect(
//       todoBloc.state,
//       const TodoState.initial(),
//     );
//   });

//   blocTest(
//     'emits rights state  when saveTask is added',
//     build: () => todoBloc,
//     act: (bloc) => bloc.add(SaveTask(task: ts)),
//     expect: () => [
//       const TodoState.loading(),
//       TodoState.loaded(
//         tasks: [ts],
//       ),
//     ],
//   );

//   blocTest<TodoBloc, TodoState>(
//     ' emits right state when editTask is added',
//     build: () => todoBloc,
//     act: (bloc) async {
//       // bloc.add(
//       //   // TodoEvent.editTask(task: ts),
//       // );
//     },
//     expect: () async => [
//       const TodoState.loading(),
//       const TodoState.loaded(tasks: []),
//     ],
//   );

//   blocTest<TodoBloc, TodoState>(' emits rights states when LoadTask is added',
//       build: () => todoBloc,
//       act: (bloc) {
//         todoBloc.add(
//           SaveTask(task: ts),
//         );
//       },
//       expect: () =>
//           [const TodoState.loading(), const TodoState.loaded(tasks: [])]);
// }
