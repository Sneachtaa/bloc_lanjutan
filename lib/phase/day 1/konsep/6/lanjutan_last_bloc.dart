import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'lanjutan_last_event.dart';
part 'lanjutan_last_state.dart';

class LanjutanLastBloc extends Bloc<LanjutanLastEvent, LanjutanLastState> {
  LanjutanLastBloc() : super(LanjutanLastInitial()) {
    on<LanjutanLastEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
