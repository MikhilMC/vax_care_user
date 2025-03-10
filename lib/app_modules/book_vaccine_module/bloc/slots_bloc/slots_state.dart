part of 'slots_bloc.dart';

@freezed
class SlotsState with _$SlotsState {
  const factory SlotsState.initial() = _Initial;
  const factory SlotsState.loading() = SlotsLoading;
  const factory SlotsState.success(
    List<SlotModel> slots,
  ) = SlotsSuccess;
  const factory SlotsState.erorr(
    String errorMessage,
  ) = SlotsErorr;
  const factory SlotsState.empty() = SlotsEmpty;
}
