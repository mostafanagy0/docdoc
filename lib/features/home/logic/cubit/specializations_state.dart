import 'package:docdoc/core/networking/api_error_handeler.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'specializations_state.freezed.dart';

@freezed
class SpecializationsState with _$SpecializationsState {
  const factory SpecializationsState.specializationsinitial() = _Initial;
  const factory SpecializationsState.specializationsloding() =
      SpecializationsLoding;
  const factory SpecializationsState.specializationssuccess(
          SpecializationsResponseModel specializationsResponseModel) =
      SpecializationSuccess;
  const factory SpecializationsState.specializationsfailure(
      ErrorHandler errorHandler) = SpecializationsFailure;
}
