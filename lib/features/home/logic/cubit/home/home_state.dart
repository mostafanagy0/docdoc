import 'package:docdoc/core/networking/api_error_handeler.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.specializationsinitial() = _Initial;
  const factory HomeState.specializationsloding() = SpecializationsLoding;
  const factory HomeState.specializationssuccess(
          List<SpecializationsData?>? specializationDataList) =
      SpecializationSuccess;
  const factory HomeState.specializationsfailure(ErrorHandler errorHandler) =
      SpecializationsFailure;
  // Doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsList) =
      DoctorsSuccess;
  const factory HomeState.doctorsError(ErrorHandler errorHandler) =
      DoctorsError;
}
