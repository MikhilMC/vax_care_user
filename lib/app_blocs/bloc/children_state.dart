part of 'children_bloc.dart';

@freezed
class ChildrenState with _$ChildrenState {
  const factory ChildrenState.initial() = _Initial;
  const factory ChildrenState.loading() = ChildrenLoading;
  const factory ChildrenState.success(
    List<ChildListModel> children,
  ) = ChildrenSuccess;
  const factory ChildrenState.error(
    String errorMessage,
  ) = ChildrenError;
  const factory ChildrenState.empty() = ChildrenEmpty;
}
