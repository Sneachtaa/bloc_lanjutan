import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'lanjutan_event.dart';
part 'lanjutan_state.dart';

class LanjutanBloc extends Bloc<LanjutanEvent, LanjutanState> {
  LanjutanBloc() : super(LanjutanInitial()) {
    on<LanjutanEvent>((event, emit) {
      emit(LanjutanInitial());
      if (event is EventPertama && event.name.length > 8) {
        emit(DataPertamaState(name: event.name));
      } else if (event is EventKedua && event.name.length > 9) {
        emit(DataKeduaState(name: event.name));
      } else {
        emit(DataErorState('eror bang'));
      }
    });
  }
}
