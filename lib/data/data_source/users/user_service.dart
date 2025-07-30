import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:sprint3_activity/core/config/endpoints.dart';
import 'package:sprint3_activity/data/model/users/user_model.dart';

part 'user_service.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class UserService {
  factory UserService(Dio dio, {String baseUrl}) = _UserService;

  @GET(Endpoints.users)
  Future<HttpResponse<List<UserModel>>> getUsers();
}
