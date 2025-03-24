import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_care_user/app_utils/app_localstorage.dart';

part 'retreive_userid_event.dart';
part 'retreive_userid_state.dart';
part 'retreive_userid_bloc.freezed.dart';

class RetreiveUseridBloc
    extends Bloc<RetreiveUseridEvent, RetreiveUseridState> {
  RetreiveUseridBloc() : super(_Initial()) {
    on<_useridFetched>((event, emit) async {
      emit(RetreiveUseridState.loading());
      try {
        final int userId = await AppLocalstorage.getUserId();
        emit(RetreiveUseridState.success(userId));
      } catch (e) {
        emit(RetreiveUseridState.failed(e.toString()));
      }
    });
  }
}
