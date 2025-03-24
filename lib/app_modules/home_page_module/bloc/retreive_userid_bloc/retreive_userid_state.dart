part of 'retreive_userid_bloc.dart';

@freezed
class RetreiveUseridState with _$RetreiveUseridState {
  const factory RetreiveUseridState.initial() = _Initial;
  const factory RetreiveUseridState.loading() = UserIDLoading;
  const factory RetreiveUseridState.success(int userId) = UserIDSuccess;
  const factory RetreiveUseridState.failed(String errorMessage) = UserIDFailed;
}
