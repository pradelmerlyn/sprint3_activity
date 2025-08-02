import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_response_entity.g.dart';

@JsonSerializable()
class PostResponseEntity extends Equatable {

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'body')
  final String? body;

  const PostResponseEntity({
    this.title,
    this.body,
  });

  @override
  List<Object?> get props => [
        title,
        body,
      ];

  factory PostResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$PostResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PostResponseEntityToJson(this);
}
