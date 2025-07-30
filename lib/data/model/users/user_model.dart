import 'package:json_annotation/json_annotation.dart';
import 'package:sprint3_activity/data/model/users/user_address_model.dart';
import 'package:sprint3_activity/data/model/users/user_company_model.dart';
import 'package:sprint3_activity/domain/entities/users/user_entity.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel extends UserEntity {
  const UserModel({
    super.id,
    super.name,
    super.username,
    super.email,
    UserAddressModel? address,
    super.phone,
    super.website,
    UserCompanyModel? company,
  }) : super(
          address: address,
          company: company,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        username,
        email,
        address,
        phone,
        website,
        company,
      ];
}
