part of 'child_details_bloc.dart';

@freezed
class ChildDetailsState with _$ChildDetailsState {
  const factory ChildDetailsState.initial() = _Initial;
  const factory ChildDetailsState.loading() = ChildDetailsLoading;
  const factory ChildDetailsState.success(
    ChildModel child,
  ) = ChildDetailsSuccess;
  const factory ChildDetailsState.error(
    String errorMessage,
  ) = ChildDetailsError;
}
