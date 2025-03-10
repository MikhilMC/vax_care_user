part of 'slots_bloc.dart';

@freezed
class SlotsEvent with _$SlotsEvent {
  const factory SlotsEvent.started() = _Started;
  const factory SlotsEvent.slotsLoaded(
    int healthProviderId,
  ) = _slotsLoaded;
}
