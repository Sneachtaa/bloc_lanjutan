part of 'pattern_bloc.dart';

@immutable
abstract class PatternEvent extends Equatable {
  const PatternEvent();

  @override
  List<Object> get props => [];
}

class AddUserEvent extends PatternEvent {
  final Model model;
  const AddUserEvent({required this.model});
  @override
  List<Object> get props => [model];
}

class DeleteUserEvent extends PatternEvent {
  final Model model;

  const DeleteUserEvent({required this.model});
  @override
  List<Object> get props => [model];
}

class UpdateUserEvent extends PatternEvent {
  final Model model;

  const UpdateUserEvent({required this.model});
  @override
  List<Object> get props => [model];
}
