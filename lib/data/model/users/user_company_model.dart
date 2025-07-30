import 'package:json_annotation/json_annotation.dart';
import 'package:sprint3_activity/domain/entities/users/user_company_entity.dart';

part 'user_company_model.g.dart';

@JsonSerializable()
class UserCompanyModel extends UserCompanyEntity {
  const UserCompanyModel({
    super.name,
    super.catchPhrase,
    super.bs,
  });

  factory UserCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$UserCompanyModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserCompanyModelToJson(this);

  @override
  List<Object?> get props => [name, catchPhrase, bs];
}
