// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_post_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPostEntity _$UserPostEntityFromJson(Map<String, dynamic> json) =>
    UserPostEntity(
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => PostEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserPostEntityToJson(UserPostEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'posts': instance.posts,
    };
