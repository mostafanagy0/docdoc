import 'package:bloc/bloc.dart';
import 'package:docdoc/core/helpers/extention.dart';
import 'package:docdoc/core/networking/api_error_handeler.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:docdoc/features/home/data/repos/home_repo_impl.dart';
import 'package:docdoc/features/home/logic/cubit/home/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepoImpl) : super(HomeState.specializationsinitial());
  final HomeRepoImpl homeRepoImpl;

  List<SpecializationsData?>? specializationsList = [];

  Future<void> getSpecializations() async {
    emit(HomeState.specializationsloding());
    final result = await homeRepoImpl.getSpecializations();
    result.when(
      success: (specializationsResponseModel) {
        specializationsList =
            specializationsResponseModel.specializationDataList ?? [];
        getDoctorsList(specializationId: specializationsList?.first?.id);
        emit(HomeState.specializationssuccess(specializationsList));
      },
      failure: (error) {
        emit(HomeState.specializationsfailure(error));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No doctors found')));
    }
  }

  //filtring the doctors list based on specialization id
  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
