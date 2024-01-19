part of 'lanjutan_bloc.dart';

abstract class LanjutanState extends Equatable {
  final List<Person> person;
  const LanjutanState({required this.person});

  @override
  List<Object> get props => [person];
}

class LanjutanInitial extends LanjutanState {
  const LanjutanInitial({required List<Person> person}) : super(person: person);
}

class LanjutanUpdated extends LanjutanState {
  const LanjutanUpdated({required List<Person> person}) : super(person: person);
}