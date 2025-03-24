part of 'child_vaccination_history_bloc.dart';

@freezed
class ChildVaccinationHistoryEvent with _$ChildVaccinationHistoryEvent {
  const factory ChildVaccinationHistoryEvent.started() = _Started;
  const factory ChildVaccinationHistoryEvent.childVaccinationHistoryFetched(
    int childId,
  ) = _childVaccinationHistoryFetched;
}
