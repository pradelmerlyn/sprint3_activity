// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPostModel _$UserPostModelFromJson(Map<String, dynamic> json) =>
    UserPostModel(
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => PostResponseEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserPostModelToJson(UserPostModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'posts': instance.posts?.map((e) => e.toJson()).toList(),
    };
