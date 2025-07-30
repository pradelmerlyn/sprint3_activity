

import 'package:sprint3_activity/domain/repository/post/post_repository.dart';
import 'package:sprint3_activity/domain/repository/users/user_repository.dart';
import 'package:sprint3_activity/domain/use_case/post/post_usecase.dart';
import 'package:sprint3_activity/domain/use_case/users/user_usecase.dart';

import 'injection_container.dart';

class UseCaseRegistry {
  void registerUserUseCases() {
    sl.registerSingleton<UserUsecase>(UserUsecase(sl<UserRepository>()));
  }

  void registerPostUseCases() {
    sl.registerSingleton<PostUsecase>(PostUsecase(sl<PostRepository>()));
  }
}
