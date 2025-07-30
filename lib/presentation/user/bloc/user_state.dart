part of 'user_bloc.dart';

enum UserStateStatus {
  initial,
  loading,
  loaded,
  success,
  failed,
}

final class UserState extends Equatable {
  final UserStateStatus status;
  final List<UserEntity>? users;
  final String errorMessage;

  const UserState(
      {this.status = UserStateStatus.initial,
      this.users = const [],
      this.errorMessage = ""});

  UserState copyWith({
    UserStateStatus? status,
    List<UserEntity>? users,
    String? errorMessage,
  }) {
    return UserState(
      status: status ?? this.status,
      users: users ?? this.users,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [];
}

final class UserInitial extends UserState {}
