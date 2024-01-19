import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mastering/phase/day%201/konsep/3/model.dart';

import 'repository_model.dart';

part 'with_model_event.dart';
part 'with_model_state.dart';

class WithModelBloc extends Bloc<WithModelEvent, WithModelState> {
  final DataRepository _dataRepository;

  WithModelBloc(this._dataRepository) : super(WithModelInitial()) {
    on<AddModelEvent>(_addModel);
    on<UpdateModelEvent>(_updateModel);
    on<DeleteModelEvent>(_deleteModel);
    on<ClearDataEvent>(_clearData);
    on<LoadEvent>(_loadModel);
  }

  Future<void> _addModel(
      AddModelEvent event, Emitter<WithModelState> emit) async {
    final newData = event.addDataModel;
    final currentState = state;
    if (currentState is LoadModelLoaded) {
      final updatedData = currentState.data + newData;
      emit(LoadModelLoaded(data: updatedData));
    } else {
      emit(LoadModelLoaded(data: newData));
    }
  }

  Future<void> _updateModel(
      UpdateModelEvent event, Emitter<WithModelState> emit) async {
    final updatedData = event.updatedData;
    emit(LoadModelLoaded(data: updatedData));
  }

  Future<void> _deleteModel(
      DeleteModelEvent event, Emitter<WithModelState> emit) async {
    final deletedData = event.deletedData;
    final currentState = state;
    if (currentState is LoadModelLoaded) {
      final updatedData = currentState.data
          .where((data) => !deletedData.contains(data))
          .toList();
      emit(LoadModelLoaded(data: updatedData));
    }
  }

  Future<void> _clearData(
      ClearDataEvent event, Emitter<WithModelState> emit) async {
    emit(const LoadModelLoaded(data: []));
  }

  Future<void> _loadModel(LoadEvent event, Emitter<WithModelState> emit) async {
    try {
      final loadedData = await _dataRepository.loadData();
      emit(LoadModelLoaded(data: loadedData));
    } catch (e) {
      emit(LoadModelErr('eror ${e.toString()}'));
    }
  }
}
