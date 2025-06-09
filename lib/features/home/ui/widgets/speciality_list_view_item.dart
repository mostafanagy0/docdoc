import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  final int selectedIndex;
  const SpecialityListViewItem({
    super.key,
    this.specializationsData,
    required this.itemIndex,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = itemIndex == selectedIndex;

    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            decoration: isSelected
                ? BoxDecoration(
                    border: Border.all(color: AppColor.mainBlue),
                    shape: BoxShape.circle,
                  )
                : const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
            child: CircleAvatar(
              radius: 28,
              backgroundColor: AppColor.lightBlue,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: SvgPicture.asset(
                  'assets/svgs/general_speciality.svg',
                  key: ValueKey<bool>(isSelected),
                  height: isSelected ? 42.h : 40.h,
                  width: isSelected ? 42.w : 40.w,
                ),
              ),
            ),
          ),
          verticalSpace(8),
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            style: isSelected
                ? TextStyles.font14DarkBlueBold
                    .copyWith(color: AppColor.mainBlue)
                : TextStyles.font12DarkBlueRegular,
            child: Text(specializationsData?.name ?? 'Specialization'),
          ),
        ],
      ),
    );
  }
}
