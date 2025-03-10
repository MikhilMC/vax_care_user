import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/class/vaccine_booking_details.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/model/vaccine_booking_response_model/vaccine_booking_response_model.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/service/book_vaccine.dart';

part 'book_vaccine_event.dart';
part 'book_vaccine_state.dart';
part 'book_vaccine_bloc.freezed.dart';

class BookVaccineBloc extends Bloc<BookVaccineEvent, BookVaccineState> {
  BookVaccineBloc() : super(_Initial()) {
    on<_vaccineBooked>((event, emit) async {
      emit(BookVaccineState.loading());
      try {
        final response = await bookVaccine(
          vaccineBookingDetails: event.details,
        );

        emit(BookVaccineState.success(response));
      } catch (e) {
        emit(BookVaccineState.failure(e.toString()));
      }
    });
  }
}
