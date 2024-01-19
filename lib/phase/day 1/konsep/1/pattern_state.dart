part of 'pattern_bloc.dart';

abstract class PatternState extends Equatable {
  final List<Model> model;
  const PatternState({required this.model});

  @override
  List<Object> get props => [model];
}

class PatternInitial extends PatternState {
  const PatternInitial({required List<Model> model}) : super(model: model);
}

class UserListUpdated extends PatternState {
 const UserListUpdated({required List<Model> model}) : super (model: model);
}