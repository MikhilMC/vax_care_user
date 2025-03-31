part of 'update_child_bloc.dart';

@freezed
class UpdateChildEvent with _$UpdateChildEvent {
  const factory UpdateChildEvent.started() = _Started;
  const factory UpdateChildEvent.childDetailsUpdated(
    UpdateChildDetails childDetails,
  ) = _childDetailsUpdated;
}
