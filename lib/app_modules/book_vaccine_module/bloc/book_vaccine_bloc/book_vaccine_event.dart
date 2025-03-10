part of 'book_vaccine_bloc.dart';

@freezed
class BookVaccineEvent with _$BookVaccineEvent {
  const factory BookVaccineEvent.started() = _Started;
  const factory BookVaccineEvent.vaccineBooked(
    VaccineBookingDetails details,
  ) = _vaccineBooked;
}
