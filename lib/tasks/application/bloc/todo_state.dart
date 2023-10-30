part of 'todo_bloc.dart';

@Freezed(equal: true)
class TodoState with _$TodoState {
  const factory TodoState.initial() = _TodoInitial;
  const factory TodoState.loading() = _TodoLoading;
  const factory TodoState.loaded({required List<Task> tasks}) = _TodoLoaded;
}


// class TodoInitial extends TodoState {
//   const TodoInitial();
// }

// class LoadedState extends TodoState {
//   final List<Task> toDo;

//   const LoadedState({required this.toDo});
// }

// class LoadingState extends TodoState {
//   const LoadingState();
// }

// class EditState extends TodoState {
//   final Task toDo;

//   const EditState({required this.toDo});
// }
