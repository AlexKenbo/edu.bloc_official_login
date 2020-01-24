import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AuthenticationEvent extends Equatable {
  AuthenticationEvent([List props = const <dynamic>[]]) : super(props);
}

//AppStarted событие, чтобы уведомить блок , что ему нужно , чтобы проверить , если пользователь в настоящее время проверки подлинности или нет.
class AppStarted extends AuthenticationEvent {
  @override
  String toString() => 'AppStarted';
}

//LoggedIn событие, чтобы уведомить блок о том , что пользователь успешно вошли в систему.
class LoggedIn extends AuthenticationEvent {
  final String token;

  LoggedIn({@required this.token}) : super([token]);

  @override
  String toString() => 'LoggedIn { token: $token }';
}

//LoggedOut событие, чтобы уведомить блок о том , что пользователь успешно вышел из системы 
class LoggedOut extends AuthenticationEvent {
  @override
  String toString() => 'LoggedOut';
}