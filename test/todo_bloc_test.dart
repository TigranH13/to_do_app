import 'package:bloc_test/bloc_test.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:to_do_app/application/bloc/todo_bloc.dart';
import 'package:to_do_app/data/repository/todos_impl_wtih_isr.dart';
import 'package:to_do_app/domain/models/task.dart';

import 'todo_bloc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TodosRepositoryImplWithIsr>()])
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MockTodosRepositoryImplWithIsr mockTaskRepo;

  late TodoBloc todoBloc;
  final Task ts = Task(
    forId: 's',
    title: 'sa',
    scheduleTime: DateTime.now(),
  );

  setUp(() {
    EquatableConfig.stringify = true;

    mockTaskRepo = MockTodosRepositoryImplWithIsr();
    todoBloc = TodoBloc(
      todosRepositoryImplWithIsr: mockTaskRepo,
    );
  });

  test('initialState should be Empty', () {
    // assert
    expect(
      todoBloc.state,
      const TodoState.initial(),
    );
  });

  blocTest(
    'emits rights state  when saveTask is added',
    build: () => todoBloc,
    act: (bloc) => bloc.add(TaskSave(task: ts)),
    expect: () => [
      const TodoState.loading(),
      TodoState.loaded(
        tasks: [ts],
      ),
    ],
  );

  blocTest<TodoBloc, TodoState>(
    ' emits right state when editTask is added',
    build: () => todoBloc,
    act: (bloc) async {
      // bloc.add(
      //   // TodoEvent.editTask(task: ts),
      // );
    },
    expect: () async => [
      const TodoState.loading(),
      const TodoState.loaded(tasks: []),
    ],
  );

  blocTest<TodoBloc, TodoState>(' emits rights states when LoadTask is added',
      build: () => todoBloc,
      act: (bloc) {
        todoBloc.add(
          TaskSave(task: ts),
        );
      },
      expect: () =>
          [const TodoState.loading(), const TodoState.loaded(tasks: [])]);
}
