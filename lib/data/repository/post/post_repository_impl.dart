import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:sprint3_activity/core/util/data_state.dart';
import 'package:sprint3_activity/data/data_source/post/post_service.dart';
import 'package:sprint3_activity/data/model/post/post_model.dart';
import 'package:sprint3_activity/domain/entities/post/post_entity.dart';
import 'package:sprint3_activity/domain/repository/post/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final PostService _postService;
  PostRepositoryImpl(
    this._postService,
  );

  @override
  Future<DataState<List<PostEntity>>> getPosts() async {
    try {
      final HttpResponse<List<PostModel>> httpResponse =
          await _postService.getPosts();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
