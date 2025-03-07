part of 'parent_profile_bloc.dart';

@freezed
class ParentProfileState with _$ParentProfileState {
  const factory ParentProfileState.initial() = _Initial;
  const factory ParentProfileState.loading() = ParentProfileDetailsLoading;
  const factory ParentProfileState.success(
    ProfileModel parentProfile,
  ) = ParentProfileDetailsSuccess;
  const factory ParentProfileState.error(
    String errorMessage,
  ) = ParentProfileDetailsError;
}
