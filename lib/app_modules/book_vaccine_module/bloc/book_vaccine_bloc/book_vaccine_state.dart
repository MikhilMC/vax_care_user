part of 'book_vaccine_bloc.dart';

@freezed
class BookVaccineState with _$BookVaccineState {
  const factory BookVaccineState.initial() = _Initial;
  const factory BookVaccineState.loading() = _loading;
  const factory BookVaccineState.success(
    VaccineBookingResponseModel response,
  ) = _success;
  const factory BookVaccineState.failure(
    String errorMessage,
  ) = _failure;
}
