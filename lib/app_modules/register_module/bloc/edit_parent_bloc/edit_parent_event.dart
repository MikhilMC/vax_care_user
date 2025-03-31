part of 'edit_parent_bloc.dart';

@freezed
class EditParentEvent with _$EditParentEvent {
  const factory EditParentEvent.started() = _Started;
  const factory EditParentEvent.parentDetailsEdited(
    ParentUpdationDetails parentDetails,
  ) = _parentDetailsEdited;
}
