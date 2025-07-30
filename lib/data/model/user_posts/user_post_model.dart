import 'package:json_annotation/json_annotation.dart';
import 'package:sprint3_activity/data/model/post/post_model.dart';
import 'package:sprint3_activity/domain/entities/user_posts/user_post_entity.dart';

part 'user_post_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserPostModel extends UserPostEntity {
  const UserPostModel({
    String? name,
    String? username,
    String? email,
    List<PostModel>? posts,
  }) : super(
          name: name,
          username: username,
          email: email,
          posts: posts,
        );

  factory UserPostModel.fromJson(Map<String, dynamic> json) =>
      _$UserPostModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserPostModelToJson(this);

  @override
  List<Object?> get props => [
        name,
        username,
        email,
        posts,
      ];
}
