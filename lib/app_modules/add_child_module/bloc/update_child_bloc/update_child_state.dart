part of 'update_child_bloc.dart';

@freezed
class UpdateChildState with _$UpdateChildState {
  const factory UpdateChildState.initial() = _Initial;
  const factory UpdateChildState.loading() = _Loading;
  const factory UpdateChildState.success(
    ChildActionResponseModel response,
  ) = _success;
  const factory UpdateChildState.failure(
    String errorMessage,
  ) = _failure;
}
