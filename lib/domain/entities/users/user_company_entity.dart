import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_company_entity.g.dart';

@JsonSerializable()
class UserCompanyEntity extends Equatable {

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'catchPhrase')
  final String? catchPhrase;

  @JsonKey(name: 'bs')
  final String? bs;


  const UserCompanyEntity({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  @override
  List<Object?> get props => [
    name,
    catchPhrase,
    bs,
  ];

  factory UserCompanyEntity.fromJson(Map<String, dynamic> json) =>
      _$UserCompanyEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserCompanyEntityToJson(this);
}
