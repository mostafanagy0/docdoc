import 'package:json_annotation/json_annotation.dart';

part 'specializations_response_model.g.dart';

@JsonSerializable()
class SpecializationsResponseModel {
  @JsonKey(name: 'data')
  List<SpecializationsData?>? specializationDataList;
  String? message;
  bool? status;
  int? code;

  SpecializationsResponseModel({
    this.specializationDataList,
    this.message,
    this.status,
    this.code,
  });

  factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationsResponseModelToJson(this);
}

@JsonSerializable()
class SpecializationsData {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors?>? doctorsList;

  SpecializationsData({
    this.id,
    this.name,
    this.doctorsList,
  });

  factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsDataFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationsDataToJson(this);
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  @JsonKey(name: 'appoint_price')
  int? price;
  String? degree;
  Specialization? specialization;
  City? city;
  @JsonKey(name: 'start_time')
  String? startTime;
  @JsonKey(name: 'end_time')
  String? endTime;

  Doctors({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.address,
    this.description,
    this.price,
    this.degree,
    this.specialization,
    this.city,
    this.startTime,
    this.endTime,
  });

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorsToJson(this);
}

@JsonSerializable()
class Specialization {
  int? id;
  String? name;

  Specialization({
    this.id,
    this.name,
  });

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationToJson(this);
}

@JsonSerializable()
class City {
  int? id;
  String? name;
  Governrate? governrate;

  City({
    this.id,
    this.name,
    this.governrate,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable()
class Governrate {
  int? id;
  String? name;

  Governrate({
    this.id,
    this.name,
  });

  factory Governrate.fromJson(Map<String, dynamic> json) =>
      _$GovernrateFromJson(json);

  Map<String, dynamic> toJson() => _$GovernrateToJson(this);
}
