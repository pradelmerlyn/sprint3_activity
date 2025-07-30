

import 'package:sprint3_activity/core/usecases/usecase.dart';
import 'package:sprint3_activity/core/util/data_state.dart';
import 'package:sprint3_activity/domain/entities/users/user_entity.dart';
import 'package:sprint3_activity/domain/repository/users/user_repository.dart';

class UserUsecase implements UseCase<DataState<List<UserEntity>>, void> {
  final UserRepository _repository;
  UserUsecase(this._repository);

  @override
  Future<DataState<List<UserEntity>>> call({void params}) {
    return _repository.getUsers();
  }
}
