part of 'parent_login_bloc.dart';

@freezed
class ParentLoginEvent with _$ParentLoginEvent {
  const factory ParentLoginEvent.started() = _Started;
  const factory ParentLoginEvent.loggedIn(
    LoginDetails loginDetails,
  ) = _loggedIn;
}
