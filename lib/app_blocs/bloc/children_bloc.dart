import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_care_user/app_models/child_list_model/child_list_model.dart';
import 'package:vax_care_user/app_services/get_children/get_children.dart';

part 'children_event.dart';
part 'children_state.dart';
part 'children_bloc.freezed.dart';

class ChildrenBloc extends Bloc<ChildrenEvent, ChildrenState> {
  ChildrenBloc() : super(_Initial()) {
    on<_childrenFetched>((event, emit) async {
      emit(ChildrenState.loading());
      try {
        final children = await getChildren();
        if (children.isEmpty) {
          emit(ChildrenState.empty());
        } else {
          emit(ChildrenState.success(children));
        }
      } catch (e) {
        emit(ChildrenState.error(e.toString()));
      }
    });
  }
}
