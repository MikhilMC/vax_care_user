import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_care_user/app_modules/login_module/class/login_details.dart';
import 'package:vax_care_user/app_modules/login_module/model/login_response_model/login_response_model.dart';
import 'package:vax_care_user/app_modules/login_module/service/parent_login.dart';

part 'parent_login_event.dart';
part 'parent_login_state.dart';
part 'parent_login_bloc.freezed.dart';

class ParentLoginBloc extends Bloc<ParentLoginEvent, ParentLoginState> {
  ParentLoginBloc() : super(_Initial()) {
    on<_loggedIn>((event, emit) async {
      emit(ParentLoginState.loading());
      try {
        final response = await parentLogin(loginDetails: event.loginDetails);

        emit(ParentLoginState.success(response));
      } catch (e) {
        emit(ParentLoginState.failure(e.toString()));
      }
    });
  }
}
