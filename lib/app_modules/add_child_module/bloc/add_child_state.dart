part of 'add_child_bloc.dart';

@freezed
class AddChildState with _$AddChildState {
  const factory AddChildState.initial() = _Initial;
  const factory AddChildState.loading() = _loading;
  const factory AddChildState.success(
    AddChildResponseModel response,
  ) = _success;
  const factory AddChildState.failure(
    String errorMessage,
  ) = _failure;
}
