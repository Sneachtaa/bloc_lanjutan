import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'model.dart';

part 'lanjutan_event.dart';
part 'lanjutan_state.dart';

class LanjutanBloc extends Bloc<LanjutanEvent, LanjutanState> {
  LanjutanBloc() : super(const LanjutanInitial(person: [])) {
    on<LanjutanEvent>((event, emit) {
      emit(LanjutanInitial(person: [Person(name: 'guest')]));
    });

    on<NamaPertama>(_data);
  }

  void _data(NamaPertama event, Emitter<LanjutanState> emit) {
    state.person.add(event.person);
    emit(LanjutanUpdated(person: state.person));
  }
}
