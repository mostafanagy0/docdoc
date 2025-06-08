import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';

abstract class HomeRepo {
  Future<ApiResult<SpecializationsResponseModel>> getSpecializations();
}
