part of 'lanjutan_bloc.dart';


abstract class LanjutanState extends Equatable {
 @override
  List<Object> get props => [];
}

class LanjutanInitial extends LanjutanState {
  @override
  List<Object> get props => [];
}


class DataPertamaState extends LanjutanState {
  final String name;

  DataPertamaState({required this.name});
  @override
  List<Object> get props => [name];
}

class DataKeduaState extends LanjutanState {
  final String name;

  DataKeduaState({required this.name});
  @override
  List<Object> get props => [name];
}

class DataErorState extends LanjutanState {
  final String eror;
  DataErorState(this.eror);
  @override
  List<Object> get props => [eror];
}
