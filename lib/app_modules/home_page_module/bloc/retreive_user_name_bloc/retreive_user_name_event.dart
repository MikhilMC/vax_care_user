part of 'retreive_user_name_bloc.dart';

@freezed
class RetreiveUserNameEvent with _$RetreiveUserNameEvent {
  const factory RetreiveUserNameEvent.started() = _Started;
  const factory RetreiveUserNameEvent.userNameFetched() = _userNameFetched;
}
