// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/model/slot_model/slot_model.dart';

class SlotWidget extends StatelessWidget {
  final SlotModel slot;
  final bool isSelected;
  final Function(SlotModel)? onSelect;
  const SlotWidget({
    super.key,
    required this.slot,
    required this.isSelected,
    required this.onSelect,
  });

  String formatTime(String time) {
    return time.split(":").sublist(0, 2).join(":");
  }

  @override
  Widget build(BuildContext context) {
    final String slotTimeRange =
        "${formatTime(slot.startTime)} - ${formatTime(slot.endTime)}";
    return GestureDetector(
      onTap: () {
        if (onSelect != null) {
          onSelect!(slot);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : AppColors.tertiaryColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.primaryColor),
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        child: Text(
          slotTimeRange,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
