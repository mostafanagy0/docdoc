import 'package:docdoc/core/helpers/extention.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:docdoc/core/widgets/custom_app_bar.dart';
import 'package:docdoc/features/details/ui/widgets/doctor_details_list.dart';
import 'package:docdoc/features/details/ui/widgets/doctor_image.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';

class DoctorDetailsView extends StatelessWidget {
  const DoctorDetailsView({super.key, this.doctor});
  final Doctors? doctor;

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: buildAppBar(
          onBack: () {
            context.pop();
          },
          title: doctor?.name ?? 'Doctor Details'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DoctorImage(),
              DoctorDetailsList(
                doctor: doctor,
              ),
              SizedBox(height: 20),
              AppTextButton(
                buttonText: 'Make An Appointment',
                textStyle: TextStyles.font16WhiteSemiBold,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
