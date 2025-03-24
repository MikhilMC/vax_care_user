part of 'retreive_userid_bloc.dart';

@freezed
class RetreiveUseridEvent with _$RetreiveUseridEvent {
  const factory RetreiveUseridEvent.started() = _Started;
  const factory RetreiveUseridEvent.useridFetched() = _useridFetched;
}
