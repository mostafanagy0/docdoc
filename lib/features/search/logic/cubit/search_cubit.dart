import 'package:bloc/bloc.dart';
import 'package:docdoc/features/search/data/repos/search_repo_imp.dart';
import 'package:docdoc/features/search/logic/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepoImp) : super(SearchState.searchinitial());
  final SearchRepoImp searchRepoImp;

  Future<void> searchDoctorByName(String name) async {
    emit(const SearchState.searchloading());
    final result = await searchRepoImp.searchDoctorByName(name);
    result.when(
      success: (doctors) => emit(SearchState.searchsuccess(doctors)),
      failure: (error) => emit(SearchState.searcherror(error)),
    );
  }
}
