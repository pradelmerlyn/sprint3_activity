// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCompanyModel _$UserCompanyModelFromJson(Map<String, dynamic> json) =>
    UserCompanyModel(
      name: json['name'] as String?,
      catchPhrase: json['catchPhrase'] as String?,
      bs: json['bs'] as String?,
    );

Map<String, dynamic> _$UserCompanyModelToJson(UserCompanyModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
