import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vax_care_user/app_modules/home_page_module/model/healthcare_provider.dart';
import 'package:vax_care_user/app_modules/home_page_module/service/get_healthcare_provider_list.dart';

part 'healthcare_provider_list_event.dart';
part 'healthcare_provider_list_state.dart';
part 'healthcare_provider_list_bloc.freezed.dart';

class HealthcareProviderListBloc
    extends Bloc<HealthcareProviderListEvent, HealthcareProviderListState> {
  HealthcareProviderListBloc() : super(_Initial()) {
    on<_healthcareProviderListFetched>((event, emit) async {
      emit(HealthcareProviderListState.loading());
      try {
        final healthcareProviders = await getHealthcareProviderList(
          latitude: event.latitude,
          longitude: event.longitude,
          childId: event.childId,
        );
        if (healthcareProviders.isNotEmpty) {
          emit(HealthcareProviderListState.success(healthcareProviders));
        } else {
          emit(HealthcareProviderListState.empty());
        }
      } catch (e) {
        emit(HealthcareProviderListState.error(e.toString()));
      }
    });
  }
}
