

import 'package:docdoc/core/networking/api_error_handeler.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.searchinitial() = _SearchInitial;

  const factory SearchState.searchloading() = SearchLoading;

  const factory SearchState.searchsuccess(List<Doctors> doctors) =
      SearchSuccess;

  const factory SearchState.searcherror(ErrorHandler errorHandler) = SearchError;
}
