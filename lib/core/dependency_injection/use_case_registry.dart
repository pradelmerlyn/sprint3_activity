

import 'package:sprint3_activity/domain/repository/post/post_repository.dart';
import 'package:sprint3_activity/domain/repository/users/user_repository.dart';
import 'package:sprint3_activity/domain/use_case/user_posts/user_post_usecase.dart';

import 'injection_container.dart';

class UseCaseRegistry {
  
  void registerUserPostUseCases() {
    sl.registerLazySingleton<UserPostUsecase>(
      () => UserPostUsecase(sl<UserRepository>(), sl<PostRepository>()),
    );
  }
}
