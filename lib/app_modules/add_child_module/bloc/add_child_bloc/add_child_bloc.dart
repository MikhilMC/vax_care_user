import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_care_user/app_modules/add_child_module/class/child_details.dart';
import 'package:vax_care_user/app_modules/add_child_module/model/child_action_response_model/child_action_response_model.dart';
import 'package:vax_care_user/app_modules/add_child_module/service/add_child.dart';

part 'add_child_event.dart';
part 'add_child_state.dart';
part 'add_child_bloc.freezed.dart';

class AddChildBloc extends Bloc<AddChildEvent, AddChildState> {
  AddChildBloc() : super(_Initial()) {
    on<_childAdded>((event, emit) async {
      emit(AddChildState.loading());
      try {
        final response = await addChild(childDetails: event.child);

        emit(AddChildState.success(response));
      } catch (e) {
        emit(AddChildState.failure(e.toString()));
      }
    });
  }
}
