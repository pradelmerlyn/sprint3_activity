import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sprint3_activity/domain/entities/users/user_address_geo_entity.dart';

part 'user_address_entity.g.dart';

@JsonSerializable()
class UserAddressEntity extends Equatable {
  @JsonKey(name: 'street')
  final String? street;

  @JsonKey(name: 'suite')
  final String? suite;

  @JsonKey(name: 'city')
  final String? city;

  @JsonKey(name: 'zipcode')
  final String? zipcode;

  @JsonKey(name: 'geo')
  final UserAddressGeoEntity? geo;

  const UserAddressEntity({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  @override
  List<Object?> get props => [
    street,
    suite,
    city,
    zipcode,
    geo,
  ];

  factory UserAddressEntity.fromJson(Map<String, dynamic> json) =>
      _$UserAddressEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserAddressEntityToJson(this);
}
