import 'package:docdoc/core/helpers/extention.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/widgets/custom_app_bar.dart';
import 'package:docdoc/features/search/logic/cubit/search_cubit.dart';
import 'package:docdoc/features/search/ui/widgets/custom_search_field.dart';
import 'package:docdoc/features/search/ui/widgets/search_doctors_list_view_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(
        onBack: () {
          context.pushNamed(Routes.mainScreen);
        },
        title: 'Search',
      ),
      body: Column(
        children: [
          CustomSearchField(
            onChanged: (value) {
              if (value.trim().isNotEmpty) {
                context.read<SearchCubit>().searchDoctorByName(value);
              }
            },
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SearchDoctorsListViewBlocBuilder(),
          ),
        ],
      ),
    );
  }
}
