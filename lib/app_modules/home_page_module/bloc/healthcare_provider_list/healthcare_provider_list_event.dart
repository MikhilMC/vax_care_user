part of 'healthcare_provider_list_bloc.dart';

@freezed
class HealthcareProviderListEvent with _$HealthcareProviderListEvent {
  const factory HealthcareProviderListEvent.started() = _Started;
  const factory HealthcareProviderListEvent.healthcareProviderListFetched(
    double latitude,
    double longitude,
    int childId,
  ) = _healthcareProviderListFetched;
}
