// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAddressEntity _$UserAddressEntityFromJson(Map<String, dynamic> json) =>
    UserAddressEntity(
      street: json['street'] as String?,
      suite: json['suite'] as String?,
      city: json['city'] as String?,
      zipcode: json['zipcode'] as String?,
      geo: json['geo'] == null
          ? null
          : UserAddressGeoEntity.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserAddressEntityToJson(UserAddressEntity instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };
