import 'package:json_annotation/json_annotation.dart';
import 'package:sprint3_activity/domain/entities/post/post_response_entity.dart';

part 'post_response_model.g.dart';

@JsonSerializable()
class PostResponseModel extends PostResponseEntity {
  const PostResponseModel({
    super.title,
    super.body,
  });

  factory PostResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PostResponseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PostResponseModelToJson(this);

  @override
  List<Object?> get props => [title, body];
}
