import 'package:json_annotation/json_annotation.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';

part 'search_response_model.g.dart';

@JsonSerializable()
class SearchResponseModel {
  final String message;
  final List<Doctors> data;
  final bool status;
  final int code;

  SearchResponseModel({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory SearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResponseModelToJson(this);
}
