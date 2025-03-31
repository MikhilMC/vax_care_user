import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_care_user/app_models/profile_model/profile_model.dart';
import 'package:vax_care_user/app_services/get_profile_details/get_profile_details.dart';

part 'parent_profile_event.dart';
part 'parent_profile_state.dart';
part 'parent_profile_bloc.freezed.dart';

class ParentProfileBloc extends Bloc<ParentProfileEvent, ParentProfileState> {
  ParentProfileBloc() : super(_Initial()) {
    on<_parentProfileDetailsFetched>((event, emit) async {
      emit(ParentProfileState.loading());
      try {
        final profile = await getProfileDetails();
        emit(ParentProfileState.success(profile));
      } catch (e) {
        emit(ParentProfileState.error(e.toString()));
      }
    });
  }
}
