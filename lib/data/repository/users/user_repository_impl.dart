import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:sprint3_activity/core/util/data_state.dart';
import 'package:sprint3_activity/data/data_source/users/user_service.dart';
import 'package:sprint3_activity/data/model/users/user_model.dart';
import 'package:sprint3_activity/domain/entities/users/user_entity.dart';
import 'package:sprint3_activity/domain/repository/users/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserService _apiService;
  UserRepositoryImpl(
    this._apiService,
  );

  @override
  Future<DataState<List<UserEntity>>> getUsers() async {
    try {
      final HttpResponse<List<UserModel>> httpResponse =
          await _apiService.getUsers();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
