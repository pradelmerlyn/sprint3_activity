// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_company_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCompanyEntity _$UserCompanyEntityFromJson(Map<String, dynamic> json) =>
    UserCompanyEntity(
      name: json['name'] as String?,
      catchPhrase: json['catchPhrase'] as String?,
      bs: json['bs'] as String?,
    );

Map<String, dynamic> _$UserCompanyEntityToJson(UserCompanyEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
