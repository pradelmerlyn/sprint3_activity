import 'package:json_annotation/json_annotation.dart';
import 'package:sprint3_activity/data/model/users/user_address_geo_model.dart';
import 'package:sprint3_activity/domain/entities/users/user_address_entity.dart';

part 'user_address_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserAddressModel extends UserAddressEntity {
  const UserAddressModel({
    super.street,
    super.suite,
    super.city,
    super.zipcode,
    UserAddressGeoModel? super.geo,
  });

  factory UserAddressModel.fromJson(Map<String, dynamic> json) =>
      _$UserAddressModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserAddressModelToJson(this);

  @override
  List<Object?> get props => [street, suite, city, zipcode, geo];
}
