import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sprint3_activity/core/dependency_injection/injection_container.dart';
import 'package:sprint3_activity/core/util/data_state.dart';
import 'package:sprint3_activity/domain/entities/user_posts/user_post_entity.dart';
import 'package:sprint3_activity/domain/use_case/user_posts/user_post_usecase.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;
  final userPostUseCase = sl<UserPostUsecase>();

  Future<void> _combineUserPosts() async {
    final result = await userPostUseCase();

    if (result is DataSuccess<List<UserPostEntity>>) {
      final combinedJson = {
        "userPosts": result.data!.map((u) => u.toJson()).toList()
      };

      debugPrint(const JsonEncoder.withIndent('  ').convert(combinedJson));
    } else {
      debugPrint("❌ Failed to fetch userPosts.");
    }

    setState(() => isLoading = false);

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
                  await _combineUserPosts();
                },
                child: const Text('View Logs'),
              ),
      ),
    );
  }
}
