import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/model/slot_model/slot_model.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/service/get_slots.dart';

part 'slots_event.dart';
part 'slots_state.dart';
part 'slots_bloc.freezed.dart';

class SlotsBloc extends Bloc<SlotsEvent, SlotsState> {
  SlotsBloc() : super(_Initial()) {
    on<_slotsLoaded>((event, emit) async {
      emit(SlotsState.loading());
      try {
        final slots = await getSlots(
          healthcareProviderId: event.healthProviderId,
        );
        if (slots.isNotEmpty) {
          emit(SlotsState.success(slots));
        } else {
          emit(SlotsState.empty());
        }
      } catch (e) {
        emit(SlotsState.erorr(e.toString()));
      }
    });
  }
}
