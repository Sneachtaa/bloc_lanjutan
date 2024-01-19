import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:mastering/phase/day%201/konsep/1/user_models.dart';

part 'pattern_event.dart';
part 'pattern_state.dart';

class PatternBloc extends Bloc<PatternEvent, PatternState> {
  PatternBloc() : super(const PatternInitial(model: [])) {
    on<AddUserEvent>(_addUser);
    on<DeleteUserEvent>(_deletedData);
    on<UpdateUserEvent>(_updatedData);
  }

  void _addUser(AddUserEvent event, Emitter<PatternState> emit) {
    state.model.add(event.model);
    emit(UserListUpdated(model: state.model));
  }

  void _deletedData(DeleteUserEvent event, Emitter<PatternState> emit) {
    state.model.remove(event.model);
    emit(UserListUpdated(model: state.model));
  }

  void _updatedData(UpdateUserEvent event, Emitter<PatternState> emit) {
    for (int i = 0; i < state.model.length; i++) {
      if (event.model.id == state.model[i].id) {
        state.model[i] = event.model;
      }
    }
    emit(UserListUpdated(model: state.model));
  }
}
