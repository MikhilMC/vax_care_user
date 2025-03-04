part of 'parent_login_bloc.dart';

@freezed
class ParentLoginState with _$ParentLoginState {
  const factory ParentLoginState.initial() = _Initial;
  const factory ParentLoginState.loading() = _loading;
  const factory ParentLoginState.success(
    LoginResponseModel response,
  ) = _success;
  const factory ParentLoginState.failure(
    String errorMessage,
  ) = _failure;
}
