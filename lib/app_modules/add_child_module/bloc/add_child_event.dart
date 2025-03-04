part of 'add_child_bloc.dart';

@freezed
class AddChildEvent with _$AddChildEvent {
  const factory AddChildEvent.started() = _Started;
  const factory AddChildEvent.childAdded(
    ChildDetails child,
  ) = _childAdded;
}
