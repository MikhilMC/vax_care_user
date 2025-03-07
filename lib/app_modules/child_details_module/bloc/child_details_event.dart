part of 'child_details_bloc.dart';

@freezed
class ChildDetailsEvent with _$ChildDetailsEvent {
  const factory ChildDetailsEvent.started() = _Started;
  const factory ChildDetailsEvent.childDetailsFetched(
    int childId,
  ) = _childDetailsFetched;
}
