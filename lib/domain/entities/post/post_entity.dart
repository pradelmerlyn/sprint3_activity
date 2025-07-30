import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_entity.g.dart';

@JsonSerializable()
class PostEntity extends Equatable {

  @JsonKey(name: 'userId')
  final int? userId;

  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'body')
  final String? body;

  const PostEntity({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  @override
  List<Object?> get props => [
        userId,
        id,
        title,
        body,
      ];

  factory PostEntity.fromJson(Map<String, dynamic> json) =>
      _$PostEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PostEntityToJson(this);
}
