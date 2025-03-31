part of 'parent_register_bloc.dart';

@freezed
class ParentRegisterState with _$ParentRegisterState {
  const factory ParentRegisterState.initial() = _Initial;
  const factory ParentRegisterState.loading() = _loading;
  const factory ParentRegisterState.success(
    ParentActionResponseModel response,
  ) = _success;
  const factory ParentRegisterState.failure(
    String errorMessage,
  ) = _failure;
}
