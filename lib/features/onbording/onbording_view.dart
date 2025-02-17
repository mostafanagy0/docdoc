import 'package:docdoc/features/onbording/widgets/doc_logo_and_name.dart';
import 'package:docdoc/features/onbording/widgets/doctor_image_and_text.dart';
import 'package:docdoc/features/onbording/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnbordingView extends StatelessWidget {
  const OnbordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(height: 30.h),
              const DoctorImageAndText(),
              const GetStartedButton()
            ],
          ),
        ),
      )),
    );
  }
}
