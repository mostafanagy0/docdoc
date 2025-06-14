import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';

class DoctorDetailsList extends StatelessWidget {
  const DoctorDetailsList({super.key, this.doctor});
  final Doctors? doctor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About me',
          style: TextStyles.font16DarkTextSemiBold,
        ),
        const SizedBox(height: 12),
        Text(
          'Dr. ${doctor?.name} is the top most Immunologists specialist in Christ Hospital at London. He achived several awards for her wonderful contribution in medical field. He is available for private consultation.',
          style: TextStyles.font14GrayParagraph,
        ),
        const SizedBox(height: 24),
        Text(
          'Working Time',
          style: TextStyles.font16DarkTextSemiBold,
        ),
        const SizedBox(height: 12),
        Text(
          '${doctor?.startTime} - ${doctor?.endTime}  |  ${doctor?.city}',
          style: TextStyles.font14GrayParagraph,
        ),
        const SizedBox(height: 24),
        Text(
          'phone',
          style: TextStyles.font16DarkTextSemiBold,
        ),
        const SizedBox(height: 12),
        Text(
          doctor?.phone ?? 'Phone number not available',
          style: TextStyles.font14GrayParagraph,
        ),
      ],
    );
  }
}
