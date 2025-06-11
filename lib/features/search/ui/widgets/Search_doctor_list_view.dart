import 'package:docdoc/features/home/ui/widgets/doctos_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchDoctorListView extends StatelessWidget {
  const SearchDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        DoctorsListViewItem();

        return null;
      },
    );
  }
}
