import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_care_user/app_modules/register_module/class/parent_registration_details.dart';
import 'package:vax_care_user/app_modules/register_module/model/parent_action_response_model/parent_action_response_model.dart';
import 'package:vax_care_user/app_modules/register_module/service/register_parent.dart';

part 'parent_register_event.dart';
part 'parent_register_state.dart';
part 'parent_register_bloc.freezed.dart';

class ParentRegisterBloc
    extends Bloc<ParentRegisterEvent, ParentRegisterState> {
  ParentRegisterBloc() : super(_Initial()) {
    on<_parenRegistered>((event, emit) async {
      emit(ParentRegisterState.loading());
      try {
        final response = await registerParent(
          parentRegistrationDetails: event.parent,
        );

        emit(ParentRegisterState.success(response));
      } catch (e) {
        emit(ParentRegisterState.failure(e.toString()));
      }
    });
  }
}
