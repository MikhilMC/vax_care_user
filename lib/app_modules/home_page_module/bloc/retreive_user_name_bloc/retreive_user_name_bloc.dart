import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_care_user/app_utils/app_localstorage.dart';

part 'retreive_user_name_event.dart';
part 'retreive_user_name_state.dart';
part 'retreive_user_name_bloc.freezed.dart';

class RetreiveUserNameBloc
    extends Bloc<RetreiveUserNameEvent, RetreiveUserNameState> {
  RetreiveUserNameBloc() : super(_Initial()) {
    on<_userNameFetched>((event, emit) async {
      emit(RetreiveUserNameState.loading());
      try {
        final name = await AppLocalstorage.getUsername();
        emit(RetreiveUserNameState.success(name));
      } catch (e) {
        emit(RetreiveUserNameState.error(e.toString()));
      }
    });
  }
}
