import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/home/logic/cubit/Home_cubit.dart';
import 'package:docdoc/features/home/logic/cubit/home/home_state.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_shimmer_loading.dart';
import 'package:docdoc/features/home/ui/widgets/speciality_list_view.dart';
import 'package:docdoc/features/home/ui/widgets/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoding ||
          current is SpecializationSuccess ||
          current is SpecializationsFailure,
      builder: (context, state) {
        return state.maybeWhen(
            specializationsloding: () {
              return setupLoading();
            },
            specializationssuccess: (specializationDataList) {
              var specializationsList = specializationDataList;
              return setupSuccess(specializationsList);
            },
            specializationsfailure: (errorHandler) => setupError(),
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }

  /// shimmer loading for specializations and doctors
  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setupSuccess(specializationsList) {
    return SpecialityListView(
      specializationDataList: specializationsList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
