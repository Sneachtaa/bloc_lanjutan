// with_model_state.dart
part of 'with_model_bloc.dart';

abstract class WithModelState extends Equatable {
  const WithModelState();

  @override
  List<Object> get props => [];
}

class WithModelInitial extends WithModelState {}

class AddModel extends WithModelState {
  final List<DataModel> data;
  const AddModel({required this.data});
  @override
  List<Object> get props => [data];
}

class LoadModelLoaded extends WithModelState {
  final List<DataModel> data;
  const LoadModelLoaded({required this.data});
  @override
  List<Object> get props => [data];
}

class LoadModelErr extends WithModelState {
  final String error;
  const LoadModelErr(this.error);

  @override
  List<Object> get props => [error];
}