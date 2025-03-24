import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_care_user/app_modules/vaccine_history_module/model/vaccine_history_model.dart';
import 'package:vax_care_user/app_modules/vaccine_history_module/service/get_child_vaccination_history.dart';

part 'child_vaccination_history_event.dart';
part 'child_vaccination_history_state.dart';
part 'child_vaccination_history_bloc.freezed.dart';

class ChildVaccinationHistoryBloc
    extends Bloc<ChildVaccinationHistoryEvent, ChildVaccinationHistoryState> {
  ChildVaccinationHistoryBloc() : super(_Initial()) {
    on<_childVaccinationHistoryFetched>((event, emit) async {
      emit(ChildVaccinationHistoryState.loading());
      try {
        final vaccinationHistory = await getChildVaccinationHistory(
          childId: event.childId,
        );
        emit(ChildVaccinationHistoryState.success(vaccinationHistory));
      } catch (e) {
        emit(ChildVaccinationHistoryState.error(e.toString()));
      }
    });
  }
}
