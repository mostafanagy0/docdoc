import 'package:bloc/bloc.dart';
import 'package:docdoc/features/home/data/repos/home_repo_impl.dart';
import 'package:docdoc/features/home/logic/cubit/specializations_state.dart';

class SpecializationsCubit extends Cubit<SpecializationsState> {
  SpecializationsCubit(this.homeRepoImpl)
      : super(SpecializationsState.specializationsinitial());
  final HomeRepoImpl homeRepoImpl;

  Future<void> getSpecializations() async {
    emit(SpecializationsState.specializationsloding());
    final result = await homeRepoImpl.getSpecializations();
    result.when(
      success: (data) {
        emit(SpecializationsState.specializationssuccess(data));
      },
      failure: (error) {
        emit(SpecializationsState.specializationsfailure(error));
      },
    );
  }
}
