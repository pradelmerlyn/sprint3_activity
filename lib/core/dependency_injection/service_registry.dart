
import 'package:sprint3_activity/core/config/endpoints.dart';
import 'package:sprint3_activity/core/util/dio_instance.dart';
import 'package:sprint3_activity/data/data_source/post/post_service.dart';
import 'package:sprint3_activity/data/data_source/users/user_service.dart';

import 'injection_container.dart';

class ServicesRegistry {

  void registerUserServices() {
    sl.registerLazySingleton<UserService>(
      () => UserService(DioInstance.init(), baseUrl: Endpoints.baseUrl),
    );
  }

  void registerPostServices() {
   sl.registerLazySingleton<PostService>(
      () => PostService(DioInstance.init(), baseUrl: Endpoints.baseUrl),
    );
  }

}
