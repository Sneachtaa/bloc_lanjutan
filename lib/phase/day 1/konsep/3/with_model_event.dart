// with_model_event.dart
part of 'with_model_bloc.dart';

abstract class WithModelEvent extends Equatable {
  const WithModelEvent(this.dataModel);
  final List<DataModel> dataModel;
  @override
  List<Object> get props => [dataModel];
}

class LoadEvent extends WithModelEvent {
  LoadEvent() : super([]);
}

class AddModelEvent extends WithModelEvent {
  final List<DataModel> addDataModel;
  const AddModelEvent({required this.addDataModel}) : super(addDataModel);
  @override
  List<Object> get props => [addDataModel];
}

class UpdateModelEvent extends WithModelEvent {
  final List<DataModel> updatedData;
  const UpdateModelEvent({required this.updatedData}) : super(updatedData);

  @override
  List<Object> get props => [updatedData];
}

class DeleteModelEvent extends WithModelEvent {
  final List<DataModel> deletedData;
  const DeleteModelEvent(this.deletedData) : super(deletedData);

  @override
  List<Object> get props => [deletedData];
}

class ClearDataEvent extends WithModelEvent {
  final List<DataModel> clearData;
  const ClearDataEvent(this.clearData) : super(clearData);

  @override
  List<Object> get props => [clearData];
}