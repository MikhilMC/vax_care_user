import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_care_user/app_models/child_model/child_model.dart';
import 'package:vax_care_user/app_services/get_child_details/get_child_details.dart';

part 'child_details_event.dart';
part 'child_details_state.dart';
part 'child_details_bloc.freezed.dart';

class ChildDetailsBloc extends Bloc<ChildDetailsEvent, ChildDetailsState> {
  ChildDetailsBloc() : super(_Initial()) {
    on<_childDetailsFetched>((event, emit) async {
      emit(ChildDetailsState.loading());
      try {
        final childDetails = await getChildDetails(childId: event.childId);

        emit(ChildDetailsState.success(childDetails));
      } catch (e) {
        emit(ChildDetailsState.error(e.toString()));
      }
    });
  }
}
