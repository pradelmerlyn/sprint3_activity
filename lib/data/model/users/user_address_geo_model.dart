import 'package:json_annotation/json_annotation.dart';
import 'package:sprint3_activity/domain/entities/users/user_address_geo_entity.dart';

part 'user_address_geo_model.g.dart';

@JsonSerializable()
class UserAddressGeoModel extends UserAddressGeoEntity {
  const UserAddressGeoModel({
    super.lat,
    super.lng,
  });

  factory UserAddressGeoModel.fromJson(Map<String, dynamic> json) =>
      _$UserAddressGeoModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserAddressGeoModelToJson(this);

  @override
  List<Object?> get props => [lat, lng];
}
