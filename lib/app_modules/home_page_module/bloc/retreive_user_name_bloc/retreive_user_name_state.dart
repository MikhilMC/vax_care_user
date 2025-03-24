part of 'retreive_user_name_bloc.dart';

@freezed
class RetreiveUserNameState with _$RetreiveUserNameState {
  const factory RetreiveUserNameState.initial() = _Initial;
  const factory RetreiveUserNameState.loading() = UserNameLoading;
  const factory RetreiveUserNameState.success(String name) = UserNameSuccess;
  const factory RetreiveUserNameState.error(String errorMessage) =
      UserNameError;
}
