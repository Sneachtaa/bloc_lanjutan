part of 'lanjutan_bloc.dart';

@immutable
abstract class LanjutanEvent extends Equatable {
  const LanjutanEvent();

  @override
  List<Object> get props => [];
}

class NamaPertama extends LanjutanEvent {
  final Person person;
  const NamaPertama({required this.person});

  @override
  List<Object> get props => [person];
}