import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sprint3_activity/core/dependency_injection/injection_container.dart';
import 'package:sprint3_activity/core/util/data_state.dart';
import 'package:sprint3_activity/domain/entities/post/post_entity.dart';
import 'package:sprint3_activity/domain/entities/users/user_entity.dart';
import 'package:sprint3_activity/domain/use_case/post/post_usecase.dart';
import 'package:sprint3_activity/domain/use_case/users/user_usecase.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;

  Future<void> _combineUserPosts() async {
    // final userUseCase = sl<UserUsecase>();
    // final postUseCase = sl<PostUsecase>();

    // final userResult = await userUseCase();
    // final postResult = await postUseCase();

    // if (userResult is DataSuccess<List<UserEntity>> &&
    //     postResult is DataSuccess<List<PostEntity>>) {
    //   final users = userResult.data!;
    //   final posts = postResult.data!;

    //   final userPosts = users.map((user) {
    //     final relatedPosts = posts
    //         .where((post) => post.userId == user.id)
    //         .map((post) => {
    //               'title': post.title,
    //               'body': post.body,
    //             })
    //         .toList();

    //     return {
    //       'name': user.name,
    //       'username': user.username,
    //       'email': user.email,
    //       'posts': relatedPosts,
    //     };
    //   }).toList();

    //   final combinedJson = {'userPosts': userPosts};
    //   final prettyJson = const JsonEncoder.withIndent('  ').convert(combinedJson);

    //   debugPrint(const JsonEncoder().convert(combinedJson));
    // } else {
    //   debugPrint("❌ Failed to fetch data");
    // }
  } 

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Post'),
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () async {
                  setState(() => isLoading = true); // Show loader
                  await _combineUserPosts();
                  setState(() => isLoading = false); // Hide loader
                },
                child: const Text('View Logs'),
              ),
      ),
    );
  }
}
