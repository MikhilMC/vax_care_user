import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_care_user/app_modules/register_module/class/parent_updation_details.dart';
import 'package:vax_care_user/app_modules/register_module/model/parent_action_response_model/parent_action_response_model.dart';
import 'package:vax_care_user/app_modules/register_module/service/edit_parent.dart';

part 'edit_parent_event.dart';
part 'edit_parent_state.dart';
part 'edit_parent_bloc.freezed.dart';

class EditParentBloc extends Bloc<EditParentEvent, EditParentState> {
  EditParentBloc() : super(_Initial()) {
    on<_parentDetailsEdited>((event, emit) async {
      emit(EditParentState.loading());
      try {
        final response = await editParent(
          parentUpdationDetails: event.parentDetails,
        );

        emit(EditParentState.success(response));
      } catch (e) {
        emit(EditParentState.failure(e.toString()));
      }
    });
  }
}
