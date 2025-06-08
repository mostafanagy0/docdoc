import 'package:docdoc/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:docdoc/features/home/ui/widgets/home_tap_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              SizedBox(
                height: 24,
              ),

              const DoctorsSpecialitySeeAll(),
              SizedBox(
                height: 18, 
              ),

              // const SpecializationsBlocBuilder(),
              // verticalSpace(8),
              // const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
