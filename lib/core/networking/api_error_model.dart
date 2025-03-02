import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;

  ApiErrorModel({required this.message, required this.code});

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
