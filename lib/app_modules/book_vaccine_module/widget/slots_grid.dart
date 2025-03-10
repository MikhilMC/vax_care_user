// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/bloc/slots_bloc/slots_bloc.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/model/slot_model/slot_model.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/widget/slot_widget.dart';
import 'package:vax_care_user/app_widgets/custom_error_widget.dart';
import 'package:vax_care_user/app_widgets/empty_list.dart';

class SlotsGrid extends StatefulWidget {
  final int healthProviderId;
  final SlotModel? selectedSlot;
  final Function(SlotModel)? onSelectingSlot;
  const SlotsGrid({
    super.key,
    required this.healthProviderId,
    this.selectedSlot,
    this.onSelectingSlot,
  });

  @override
  State<SlotsGrid> createState() => _SlotsGridState();
}

class _SlotsGridState extends State<SlotsGrid> {
  @override
  void initState() {
    super.initState();
    context
        .read<SlotsBloc>()
        .add(SlotsEvent.slotsLoaded(widget.healthProviderId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SlotsBloc, SlotsState>(
      builder: (context, state) {
        if (state is SlotsErorr) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is SlotsEmpty) {
          return EmptyList(
            message: "There are no slots available",
          );
        }

        if (state is! SlotsSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }

        final timeSlots = state.slots;
        return Expanded(
          child: GridView.builder(
            itemCount: timeSlots.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Two columns
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2, // Adjust height
            ),
            itemBuilder: (context, index) {
              // String slot = timeSlots[index];
              SlotModel slot = timeSlots[index];
              bool isSelected = widget.selectedSlot == slot;

              return SlotWidget(
                slot: slot,
                isSelected: isSelected,
                onSelect: widget.onSelectingSlot,
              );
            },
          ),
        );
      },
    );
  }
}
