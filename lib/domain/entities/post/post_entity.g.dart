// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostEntity _$PostEntityFromJson(Map<String, dynamic> json) => PostEntity(
      userId: (json['userId'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$PostEntityToJson(PostEntity instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
