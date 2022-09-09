import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

class RepoFailure implements Failure {
  final String message;

  RepoFailure(this.message);
  @override
  List<Object?> get props => [message];

  @override
  bool? get stringify => true;
}

class ConnectionFailure implements Failure {
  final String message;

  ConnectionFailure(this.message);

  @override
  List<Object?> get props => [message];

  @override
  bool? get stringify => true;
}
