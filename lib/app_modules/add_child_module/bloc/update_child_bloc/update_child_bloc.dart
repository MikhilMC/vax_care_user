import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_care_user/app_modules/add_child_module/class/update_child_details.dart';
import 'package:vax_care_user/app_modules/add_child_module/model/child_action_response_model/child_action_response_model.dart';
import 'package:vax_care_user/app_modules/add_child_module/service/update_child.dart';

part 'update_child_event.dart';
part 'update_child_state.dart';
part 'update_child_bloc.freezed.dart';

class UpdateChildBloc extends Bloc<UpdateChildEvent, UpdateChildState> {
  UpdateChildBloc() : super(_Initial()) {
    on<_childDetailsUpdated>((event, emit) async {
      emit(UpdateChildState.loading());
      try {
        final response = await updateChild(
          childDetails: event.childDetails,
        );
        emit(UpdateChildState.success(response));
      } catch (e) {
        emit(UpdateChildState.failure(e.toString()));
      }
    });
  }
}
