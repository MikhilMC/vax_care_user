part of 'child_vaccination_history_bloc.dart';

@freezed
class ChildVaccinationHistoryState with _$ChildVaccinationHistoryState {
  const factory ChildVaccinationHistoryState.initial() = _Initial;
  const factory ChildVaccinationHistoryState.loading() =
      ChildVaccinationHistoryLoading;
  const factory ChildVaccinationHistoryState.success(
    VaccinationHistoryModel vaccinationHistory,
  ) = ChildVaccinationHistorySuccess;
  const factory ChildVaccinationHistoryState.error(
    String errorMessage,
  ) = ChildVaccinationHistoryError;
}
