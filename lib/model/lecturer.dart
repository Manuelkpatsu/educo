import 'package:equatable/equatable.dart';

class Lecturer extends Equatable {
  final int id;
  final String name;
  final String occupation;

  const Lecturer({required this.id, required this.name, required this.occupation});

  @override
  List<Object?> get props => [id, name, occupation];
}
