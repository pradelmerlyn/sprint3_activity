import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sprint3_activity/core/util/data_state.dart';
import 'package:sprint3_activity/domain/entities/users/user_entity.dart';
import 'package:sprint3_activity/domain/use_case/users/user_usecase.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {

  final UserUsecase userUsecase;
  UserBloc(this.userUsecase) : super(UserInitial()) {
    on<GetUsers>(onGetUsers);
  }

  void onGetUsers(GetUsers event, Emitter<UserState> emit) async {
    try {
      emit(state.copyWith(status: UserStateStatus.loading));

      final DataState<List<UserEntity>> result = await userUsecase.call();
      if (result is DataFailed) {
        return emit(state.copyWith(
          status: UserStateStatus.failed,
          errorMessage: result.error.toString(),
        ));
      }
      return emit(state.copyWith(
        status: UserStateStatus.loaded,
        users: result.data ?? [],
      ));
    } catch (e, stackTrace) {
      log(e.toString());
      log(stackTrace.toString());
      emit(state.copyWith(
        status: UserStateStatus.failed,
        errorMessage: e.toString(),
      ));
    }
  }
}
