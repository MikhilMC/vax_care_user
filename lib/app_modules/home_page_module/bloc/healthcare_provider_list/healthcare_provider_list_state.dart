part of 'healthcare_provider_list_bloc.dart';

@freezed
class HealthcareProviderListState with _$HealthcareProviderListState {
  const factory HealthcareProviderListState.initial() = _Initial;
  const factory HealthcareProviderListState.loading() =
      HealthcareProviderListLoading;
  const factory HealthcareProviderListState.success(
    List<HealthcareProvider> healthcareProvider,
  ) = HealthcareProviderListSuccess;
  const factory HealthcareProviderListState.error(
    String errorMessage,
  ) = HealthcareProviderListError;
  const factory HealthcareProviderListState.empty() =
      HealthcareProviderListEmpty;
}
