import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';

abstract class SearchRepo {
  Future<ApiResult<List<Doctors>>> searchDoctorByName(String name);
}
