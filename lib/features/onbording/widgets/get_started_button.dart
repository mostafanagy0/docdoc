import 'package:docdoc/core/helpers/extention.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            style: TextStyles.font13DarkBlueMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          TextButton(
            onPressed: () {
              context.pushNamed(Routes.loginView);
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(AppColor.mainBlue),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize: WidgetStateProperty.all(
                const Size(double.infinity, 52),
              ),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            child: Text(
              'Get Started',
              style: TextStyles.font16WhiteSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
