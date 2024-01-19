part of 'lanjutan_bloc.dart';

@immutable
abstract class LanjutanEvent extends Equatable {}

class EventPertama extends LanjutanEvent {
  final String name;
   EventPertama({required this.name});
   @override
  List<Object> get props => [name];
}

class EventKedua extends LanjutanEvent {
  final String name;
   EventKedua({required this.name});
   @override
  List<Object> get props => [name];
}
