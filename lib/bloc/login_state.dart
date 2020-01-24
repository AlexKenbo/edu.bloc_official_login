import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class LoginState extends Equatable {
  LoginState([List props = const <dynamic>[]]) : super(props);
}

//LoginInitial является начальным состоянием LoginForm.
class LoginInitial extends LoginState {
  @override
  String toString() => 'LoginInitial';
}


//LoginLoading такое состояние LoginForm, когда мы проверяем учетные данные
class LoginLoading extends LoginState {
  @override
  String toString() => 'LoginLoading';
}


//LoginFailure это состояние LoginForm, когда попытка входа не удалась.
class LoginFailure extends LoginState {
  final String error;

  LoginFailure({@required this.error}) : super([error]);

  @override
  String toString() => 'LoginFailure { error: $error }';
}