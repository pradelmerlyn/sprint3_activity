import 'package:json_annotation/json_annotation.dart';
import 'package:sprint3_activity/domain/entities/post/post_entity.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel extends PostEntity {
  const PostModel({
    super.userId,
    super.id,
    super.title,
    super.body,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PostModelToJson(this);

  @override
  List<Object?> get props => [userId, id, title, body];
}
