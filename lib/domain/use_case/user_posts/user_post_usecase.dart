import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sprint3_activity/core/usecases/usecase.dart';
import 'package:sprint3_activity/core/util/data_state.dart';
import 'package:sprint3_activity/domain/entities/post/post_entity.dart';
import 'package:sprint3_activity/domain/entities/user_posts/user_post_entity.dart';
import 'package:sprint3_activity/domain/entities/users/user_entity.dart';
import 'package:sprint3_activity/domain/repository/post/post_repository.dart';
import 'package:sprint3_activity/domain/repository/users/user_repository.dart';

class UserPostUsecase
    implements UseCase<DataState<List<UserPostEntity>>, void> {
  final UserRepository _userRepository;
  final PostRepository _postRepository;

  UserPostUsecase(this._userRepository, this._postRepository);

  @override
  Future<DataState<List<UserPostEntity>>> call({void params}) async {
    final usersResult = await _userRepository.getUsers();
    final postResult = await _postRepository.getPosts();

    if (usersResult is DataSuccess<List<UserEntity>> &&
        postResult is DataSuccess<List<PostEntity>>) {
      final users = usersResult.data!;
      final posts = postResult.data!;

      // debugPrint("USERS - USE CASE: $users");
      // debugPrint("POST - USE CASE: $posts");

      final List<UserPostEntity> userPosts = users.map((user) {
        final filteredPost = posts
            .where((post) => post.userId == user.id)
            .toList(); 

        return UserPostEntity(
          name: user.name ?? '',
          username: user.username ?? '',
          email: user.email ?? '',
          posts: filteredPost, 
        );
      }).toList();

      return DataSuccess(userPosts);
    }

    return DataFailed(
      DioException(
        requestOptions: RequestOptions(path: ''),
        error: "❌ Failed to fetch users or posts.",
        type: DioExceptionType.unknown,
      ),
    );
  }
}
