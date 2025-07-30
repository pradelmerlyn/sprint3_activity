import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sprint3_activity/domain/entities/post/post_entity.dart';

part 'user_post_entity.g.dart';

@JsonSerializable()
class UserPostEntity extends Equatable {


  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'username')
  final String? username;

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'posts')
  final List<PostEntity>? posts;

  const UserPostEntity({
    this.name,
    this.username,
    this.email,
    this.posts,
  });

  @override
  List<Object?> get props => [
        name,
        username,
        email,
        posts,
      ];

  factory UserPostEntity.fromJson(Map<String, dynamic> json) =>
      _$UserPostEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserPostEntityToJson(this);
}
