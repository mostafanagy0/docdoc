import 'package:docdoc/core/networking/api_error_handeler.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:docdoc/features/search/data/repos/search_repo.dart';

class SearchRepoImp extends SearchRepo {
  final ApiService apiService;
  SearchRepoImp(this.apiService);

  @override
  Future<ApiResult<List<Doctors>>> searchDoctorByName(String name) async {
    try {
      final response = await apiService.searchDoctorsByName(name);
      return ApiResult.success(response.data);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
