import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:docdoc/features/home/ui/widgets/doctos_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchDoctorListView extends StatelessWidget {
  final List<Doctors> doctors;

  const SearchDoctorListView({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      itemCount: doctors.length,
      separatorBuilder: (_, __) => SizedBox(height: 12.h),
      itemBuilder: (context, index) {
        return DoctorsListViewItem(doctorsModel: doctors[index]);
      },
    );
  }
}
