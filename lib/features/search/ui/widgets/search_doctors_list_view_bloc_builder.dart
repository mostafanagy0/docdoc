import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_shimmer_loading.dart';
import 'package:docdoc/features/search/logic/cubit/search_cubit.dart';
import 'package:docdoc/features/search/logic/cubit/search_state.dart';
import 'package:docdoc/features/search/ui/widgets/Search_doctor_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchDoctorsListViewBlocBuilder extends StatelessWidget {
  const SearchDoctorsListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return state.when(
          searchinitial: () => Center(
              child: Text(
            'ٍSearch for doctors',
            style: TextStyles.font12GrayMedium
                .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
          )),
          searchloading: () => DoctorsShimmerLoading(),
          searchsuccess: (doctors) {
            if (doctors.isEmpty) {
              return Center(
                  child: Text(
                ' No doctors found',
                style: TextStyles.font12GrayMedium
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
              ));
            }
            return SearchDoctorListView(
              doctors: doctors,
            );
          },
          searcherror: (error) => Center(
              child: Text(
            error.apiErrorModel.message ?? 'Something went wrong!',
          )),
        );
      },
    );
  }
}
