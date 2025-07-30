import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_address_geo_entity.g.dart';

@JsonSerializable()
class UserAddressGeoEntity extends Equatable {
  @JsonKey(name: 'lat')
  final String? lat;

  @JsonKey(name: 'lng')
  final String? lng;

  const UserAddressGeoEntity({
    this.lat,
    this.lng,
  });

  @override
  List<Object?> get props => [
    lat,
    lng,
  ];

  factory UserAddressGeoEntity.fromJson(Map<String, dynamic> json) =>
      _$UserAddressGeoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserAddressGeoEntityToJson(this);
}
