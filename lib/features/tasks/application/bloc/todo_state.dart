part of 'todo_bloc.dart';

@Freezed(equal: true)
class TodoState with _$TodoState {
  const factory TodoState.initial() = _TodoInitial;

  const factory TodoState.loading() = _TodoLoading;

  const factory TodoState.loaded({
    required List<Task> tasks,
  }) = _TodoLoaded;

  const factory TodoState.failed() = _Failed;
}
