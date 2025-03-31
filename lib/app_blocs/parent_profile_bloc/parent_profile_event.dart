part of 'parent_profile_bloc.dart';

@freezed
class ParentProfileEvent with _$ParentProfileEvent {
  const factory ParentProfileEvent.started() = _Started;
  const factory ParentProfileEvent.parentProfileDetailsFetched() =
      _parentProfileDetailsFetched;
}
