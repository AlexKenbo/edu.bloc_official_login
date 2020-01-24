import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AuthenticationState extends Equatable {
  AuthenticationState([List props = const <dynamic>[]]) : super(props);
}


// Состояние аутентификации пользователя может быть одним из следующих:
// неинициализированный - ожидание проверки подлинности пользователя при запуске приложения.
// Например, если состояние аутентификации не было инициализировано, пользователь может видеть заставку.
class AuthenticationUninitialized extends AuthenticationState {
  @override
  String toString() => 'AuthenticationUninitialized';
}

// аутентифицирован - успешно аутентифицирован
// если состояние аутентификации было аутентифицировано, пользователь может увидеть домашний экран.
class AuthenticationAuthenticated extends AuthenticationState {
  @override
  String toString() => 'AuthenticationAuthenticated';
}

// не прошедший проверку подлинности - не прошедший проверку подлинности
// если состояние аутентификации не было аутентифицировано, пользователь может увидеть форму входа в систему.
class AuthenticationUnauthenticated extends AuthenticationState {
  @override
  String toString() => 'AuthenticationUnauthenticated';
}

// загрузка - ожидание сохранения / удаления токена
// если состояние аутентификации загружалось, пользователь мог видеть индикатор выполнения.
class AuthenticationLoading extends AuthenticationState {
  @override
  String toString() => 'AuthenticationLoading';
}
