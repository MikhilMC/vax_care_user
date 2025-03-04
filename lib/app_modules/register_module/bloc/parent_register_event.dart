part of 'parent_register_bloc.dart';

@freezed
class ParentRegisterEvent with _$ParentRegisterEvent {
  const factory ParentRegisterEvent.started() = _Started;
  const factory ParentRegisterEvent.parenRegistered(
    ParentRegistrationDetails parent,
  ) = _parenRegistered;
}
