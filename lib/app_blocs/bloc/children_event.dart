part of 'children_bloc.dart';

@freezed
class ChildrenEvent with _$ChildrenEvent {
  const factory ChildrenEvent.started() = _Started;
  const factory ChildrenEvent.childrenFetched() = _childrenFetched;
}
