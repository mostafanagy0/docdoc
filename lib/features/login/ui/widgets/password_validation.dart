import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation(
      {super.key,
      required this.hasUppercase,
      required this.hasLowercase,
      required this.hasNumber,
      required this.hasSpecialCharacter,
      required this.hasMinLength});
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least one uppercase letter', hasUppercase),
        verticalSpace(2),
        buildValidationRow('At least one lower letter', hasLowercase),
        verticalSpace(2),
        buildValidationRow(
            'At least one Special Character ', hasSpecialCharacter),
        verticalSpace(2),
        buildValidationRow('At least one number letter', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 8 characters long', hasMinLength),
        verticalSpace(2),
      ],
    );
  }

  buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: AppColor.gray,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              color: hasValidated ? AppColor.gray : AppColor.darkBlue),
        )
      ],
    );
  }
}
