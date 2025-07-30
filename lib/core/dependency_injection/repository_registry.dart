

import 'package:sprint3_activity/data/data_source/post/post_service.dart';
import 'package:sprint3_activity/data/data_source/users/user_service.dart';
import 'package:sprint3_activity/data/repository/post/post_repository_impl.dart';
import 'package:sprint3_activity/data/repository/users/user_repository_impl.dart';
import 'package:sprint3_activity/domain/repository/post/post_repository.dart';
import 'package:sprint3_activity/domain/repository/users/user_repository.dart';

import 'injection_container.dart';

class RepositoryRegistry {
  void registerUserRepository() {
    sl.registerSingleton<UserRepository>(UserRepositoryImpl(
      sl<UserService>(),
    ));
  }

  void registerPostRepository() {
    sl.registerSingleton<PostRepository>(PostRepositoryImpl(
      sl<PostService>(),
    ));
  }

  
}
