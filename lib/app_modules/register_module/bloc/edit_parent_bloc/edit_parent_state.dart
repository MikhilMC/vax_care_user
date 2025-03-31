part of 'edit_parent_bloc.dart';

@freezed
class EditParentState with _$EditParentState {
  const factory EditParentState.initial() = _Initial;
  const factory EditParentState.loading() = _loading;
  const factory EditParentState.success(
    ParentActionResponseModel response,
  ) = _success;
  const factory EditParentState.failure(
    String errorMessage,
  ) = _failure;
}
