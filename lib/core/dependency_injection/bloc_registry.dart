
import 'package:sprint3_activity/domain/use_case/post/post_usecase.dart';
import 'package:sprint3_activity/domain/use_case/users/user_usecase.dart';
import 'package:sprint3_activity/presentation/post/bloc/post_bloc.dart';
import 'package:sprint3_activity/presentation/user/bloc/user_bloc.dart';

import 'injection_container.dart';

class BlocRegistry {
  void registerUserBlocs() {
    sl.registerFactory<UserBloc>(() => UserBloc(sl<UserUsecase>()));
  }

  void registerPostBlocs() {
    sl.registerFactory<PostBloc>(() => PostBloc(sl<PostUsecase>()));
  }
  

}
